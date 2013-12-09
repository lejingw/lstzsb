package com.totyu.service.common;

import java.util.List;

import org.directwebremoting.io.FileTransfer;

import com.totyu.vo.basic.Org;
import com.totyu.vo.sys.Parameter;
import com.totyu.vo.sys.UploadFile;


public interface SysCommonService {

	/**
	 * 获取单据编号
	 */
	String getBillno(String billCode);

	/**
	 * 获取所有系统参数配置
	 */
	List<Parameter> getAllParameters();
	/**
	 * 根据组织类型，获取组织、树
	 */
	List<Org> getOrgTree();

	/**
	 * 保存上传文件
	 */
	String saveUploadFile(String filename, String order, String filepath);
	/**
	 * 文件上传
	 */
	void uploadFile(String billCode, String headid, List<FileTransfer> ftList, List<String> saveIdList, List<String> deleteIdList, String userid);
	
	List<UploadFile> getUploadFileList(String billCode, String headid);
	/**
	 * 根据 id 获取上传文件信息
	 */
	UploadFile getUploadFile(String id);
}
