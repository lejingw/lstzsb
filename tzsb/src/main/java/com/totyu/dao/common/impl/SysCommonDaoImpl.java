package com.totyu.dao.common.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapSession;
import com.totyu.dao.BaseDao;
import com.totyu.dao.common.SysCommonDao;
import com.totyu.dao.common.TransactionAction;
import com.totyu.vo.basic.Org;
import com.totyu.vo.sys.Parameter;
import com.totyu.vo.sys.UploadFile;
import com.totyu.web.util.DateUtil;

@Repository
public class SysCommonDaoImpl extends BaseDao implements SysCommonDao {
	private static final String BIZ_TYPE_BILLNO = "billNo";//单据编号
	/**
	 * 查找单个string类型返回值
	 * @param sql
	 * @return
	 */
	public String querySingleString(String sql){
		return (String) executeQueryForObject("SysCommon.querySingleString", sql);
	}
	/**
	 * 获取单据编号
	 */
	public synchronized String getBillno(final String billCode) {
		return (String)executeOutTransaction(new TransactionAction() {
			public Object executeAction(SqlMapSession session) throws SQLException {
				Map<String, String> map = new HashMap<String, String>();
				String bizDate = DateUtil.formatSdf6(null);
				map.put("bizType", BIZ_TYPE_BILLNO);
				map.put("bizCode", billCode);
				map.put("bizDate", bizDate);
				map.put("billCode", billCode);
				
				String bizIndex = (String) session.queryForObject("SysCommon.getCurrentBillnoIndex", map);
				if (null == bizIndex) {
					map.put("bizIndex", "1");
					session.insert("SysCommon.createIndex", map);
					bizIndex = "0";
				} else {
					session.update("SysCommon.increaseIndex", map);
				}
				return billCode + bizDate + String.format("%04d", Integer.valueOf(bizIndex) + 1);
			}
		});
	}
	
	/**
	 * 获取所有系统参数配置
	 */
	public List<Parameter> getAllParameters(){
		return executeQueryForList("SysCommon.getAllParameters", null);
	}
	
	/**
	 * 根据组织类型获取组织树
	 * @return
	 */
	public List<Org> getOrgTree(){
		return executeQueryForList("SysCommon.getOrgTree", null);
	}
	/**
	 * 保存附件信息
	 */
	public void saveUploadFile(List<UploadFile> uploadFileList){
		executeBatchInsert("SysCommon.saveUploadFile", uploadFileList);
	}
	/**
	 * 根据 id 获取上传文件信息
	 * @param id
	 * @return
	 */
	public UploadFile getUploadFile(String id){
		return (UploadFile)executeQueryForObject("SysCommon.getUploadFile", id);
	}

	/**
	 * 获取工具条权限
	 * @param toolbarCode
	 * @param orgId
	 * @param userid
	 * @return
	public List<RightMapping> getToolbarRight(String toolbarCode, String orgId, String userid){
		Map<String, String> condition = new HashMap<String, String>();
		condition.put("toolbarCode", toolbarCode);
		condition.put("orgId", orgId);
		condition.put("userid", userid);
		return executeQueryForList("SysCommon.getToolbarRight", condition);
	}
	 */
}
