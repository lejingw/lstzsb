package com.totyu.service.common.impl;

import java.util.List;

import org.directwebremoting.io.FileTransfer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totyu.dao.common.SysCommonDao;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.basic.Org;
import com.totyu.vo.sys.Parameter;
import com.totyu.vo.sys.UploadFile;

@Service("sysCommonService")
public class SysCommonServiceImpl implements SysCommonService {
	@Autowired
	private SysCommonDao sysCommonDao;

	/**
	 * 获取单据编号
	 */
	public synchronized String getBillno(String billCode) {
		return sysCommonDao.getBillno(billCode);
	}

	/**
	 * 获取所有系统参数配置
	 */
	public List<Parameter> getAllParameters() {
		return sysCommonDao.getAllParameters();
	}

	/**
	 * 根据组织类型获取组织树
	 */
	public List<Org> getOrgTree() {
		return sysCommonDao.getOrgTree();
	}
	/**
	 * 保存上传文件
	 */
	public String saveUploadFile(String filename, String order, String filepath){
		return sysCommonDao.saveUploadFile(filename, order, filepath);
	}
	/**
	 * 文件上传列表
	 */
	public void uploadFile(String billCode, String headid, List<FileTransfer> ftList, List<String> saveIdList, List<String> deleteIdList, String userid){
		sysCommonDao.saveUploadFile(billCode, headid, ftList, userid);
		sysCommonDao.updateLoadFiles(billCode, headid, saveIdList, deleteIdList, userid);
	}

	public List<UploadFile> getUploadFileList(String billCode, String headid){
		return sysCommonDao.getUploadFileList(billCode, headid);
	}
	/**
	 * 根据 id 获取上传文件信息
	 */
	public UploadFile getUploadFile(String id){
		return sysCommonDao.getUploadFile(id);
	}


}
