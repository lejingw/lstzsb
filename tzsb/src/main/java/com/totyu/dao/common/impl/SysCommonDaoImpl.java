package com.totyu.dao.common.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.totyu.dao.BaseDao;
import com.totyu.dao.common.SysCommonDao;
import com.totyu.vo.common.Dict;
import com.totyu.vo.common.Org;
import com.totyu.vo.common.Parameter;
import com.totyu.vo.common.SelectorOption;
import com.totyu.vo.common.User;
import com.totyu.vo.qiye.jbxx.Dwxx;
import com.totyu.vo.sys.UploadFile;

@Repository
public class SysCommonDaoImpl extends BaseDao implements SysCommonDao {
	/**
	private static final String BIZ_TYPE_BILLNO = "billNo";//单据编号
	 * 查找单个string类型返回值
	 * @param sql
	 * @return
	 */
	public String querySingleString(String sql){
		return (String) executeQueryForObject("SysCommon.querySingleString", sql);
	}
	/**
	 * 获取单据编号
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
	 */
	/**
	 * 获取所有用户信息
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<User> getAllUser(){
		return (List<User>)executeQueryForList("SysCommon.getAllUser", null);
	}
	/**
	 * 获取所有数据字典项
	 * @return
	 */
	public List<Dict> getAllDictItem(){
		List<Dict> list = executeQueryForList("SysCommon.getAllDictItem", null);
		return list;
	}
	/**
	 * 获取所有系统参数配置
	 */
	public List<Parameter> getAllParameters(){
		return executeQueryForList("SysCommon.getAllParameters", null);
	}
	/**
	 * 获取所有组织数据
	 */
	public List<Org> getAllOrg(){
		return executeQueryForList("SysCommon.getAllOrg", null);
	}

	/**
	 * 更新上传文件
	 */
	public void updateLoadFiles(String billCode, String headid, List<String> saveIdList, List<String> deleteIdList, String userid){
		List<Map<String, String>> addFileList = new ArrayList<Map<String,String>>();
		for(String saveId : saveIdList){
			Map<String, String> map = new HashMap<String, String>();
			map.put("billCode", billCode);
			map.put("headid", headid);
			map.put("id", saveId);
			map.put("userid", userid);
			addFileList.add(map);
		}
		executeBatchUpdate("SysCommon.updateLoadFiles", addFileList);
		executeBatchDelete("SysCommon.deleteLoadFiles", deleteIdList);
	}
	private String getRelativeFilename(String fileName) {
		return System.currentTimeMillis() + "_" + fileName;
	}
	/**
	 * 获取单据上传文件列表
	 */
	public List<UploadFile> getUploadFileList(String billCode, String headid){
		Map<String, String> map = new HashMap<String, String>();
		map.put("billCode", billCode);
		map.put("headid", headid);
		return executeQueryForList("SysCommon.getUploadFileList", map);
	}
	/**
	 * 获取最新的50张图片
	 * @return
	 */
	public List<UploadFile> getLatest50Pics(){
		return executeQueryForList("SysCommon.getLatest50Pics", null);
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
	 * 获取单位信息
	 */
	public Dwxx getDwxxById(String dwid){
		return (Dwxx) executeQueryForObject("SysCommon.getDwxxById", dwid);
	}
	
	/**
	 * 获取设备种类下拉列表数据
	 * 
	 * @return 设备种类一览数据
	 */
	@Override
	public List<SelectorOption> getSbzl() {
		return executeQueryForList("SysCommon.getSbzl", null);
	}

	/**
	 * 获取设备类别下拉列表数据
	 * @return 设备类别一览数据
	 */
	@Override
	public List<SelectorOption> getSblb(String fjdm, String dmjb) {
		Map condition = new HashMap<String,String>();
		condition.put("fjdm", fjdm);
		condition.put("dmjb", dmjb);
		return executeQueryForList("SysCommon.getSblb", condition);
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
