package com.totyu.dao.common.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.directwebremoting.io.FileTransfer;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapSession;
import com.totyu.common.CommonUtil;
import com.totyu.common.Global;
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

	private String getRelativeFilename(String fileName) {
		return System.currentTimeMillis() + "_" + fileName;
	}

	/**
	 * 更新上传文件
	 */
	public void updateLoadFiles(String billCode, String headid, List<String> saveIdList, List<String> deleteIdList, String userid){
		List<Map<String, String>> list = new ArrayList<Map<String,String>>();
		for(String saveId : saveIdList){
			Map<String, String> map = new HashMap<String, String>();
			map.put("billCode", billCode);
			map.put("headid", headid);
			map.put("id", saveId);
			map.put("userid", userid);
			list.add(map);
		}
		executeBatchUpdate("SysCommon.updateLoadFiles1", list);
		executeBatchDelete("SysCommon.updateLoadFiles2", deleteIdList);
	}
	/**
	 * 保存附件信息
	 */
	public void saveUploadFile(String billCode, String headid, List<FileTransfer> ftList, String userid){
		List<UploadFile> uploadFileList = new ArrayList<UploadFile>();
		InputStream is = null;
		OutputStream os = null;
		try {
			int len = 0;
			byte[] buff = new byte[1024];
			int sort = 0;
			for (FileTransfer ft : ftList) {
				is = ft.getInputStream();
				String relativeFilename = getRelativeFilename(ft.getFilename());
				File file = new File(Global.getPicUploadPath() + relativeFilename);
				os = new FileOutputStream(file);
				while ((len = is.read(buff)) > 0) {
					os.write(buff, 0, len);
				}
				os.flush();
				os.close();
				is.close();
				os = null;
				is = null;
				
				UploadFile data = new UploadFile();
				data.setLaiyuan(billCode);
				data.setLyid(headid);
				data.setShunxu(""+sort++);
				data.setMingcheng(ft.getFilename());
				data.setPath(relativeFilename);
				data.setCreateId(userid);
				
				uploadFileList.add(data);
			}
		} catch (Exception e) {
			throw new RuntimeException("保存文件出错");
		}finally{
			try{
				if(null != os){
					os.close();
					os = null;
				}
				if(null != is){
					is.close();
					is = null;
				}
			}catch(Exception e){
				throw new RuntimeException("保存文件出错");
			}
		}
		executeBatchInsert("SysCommon.saveUploadFile", uploadFileList);
	}
	public List<UploadFile> getUploadFileList(String billCode, String headid){
		Map<String, String> map = new HashMap<String, String>();
		map.put("billCode", billCode);
		map.put("headid", headid);
		return executeQueryForList("SysCommon.getUploadFileList", map);
	}
	/**
	 * 根据 id 获取上传文件信息
	 */
	public UploadFile getUploadFile(String id){
		return (UploadFile)executeQueryForObject("SysCommon.getUploadFile", id);
	}
	/**
	 * 保存上传文件
	 */
	public String saveUploadFile(String filename, String order, String filepath){
		UploadFile uf = new UploadFile();
		uf.setMingcheng(filename);
		uf.setShunxu(order);
		uf.setPath(filepath);
		return (String)executeInsert("SysCommon.saveUploadFile", uf);
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
