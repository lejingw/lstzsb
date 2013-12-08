package com.totyu.dao.common;

import java.util.List;

import org.directwebremoting.io.FileTransfer;

import com.totyu.vo.basic.Org;
import com.totyu.vo.sys.Parameter;
import com.totyu.vo.sys.UploadFile;


public interface SysCommonDao {
	/**
	 * 查找单个string类型返回值
	 */
	String querySingleString(String sql);
	/**
	 * 获取单据编号
	 */
	String getBillno(String billCode);
	/**
	 * 获取所有系统参数配置
	 */
	List<Parameter> getAllParameters();
	/**
	 * 根据组织类型获取组织树
	 */
	List<Org> getOrgTree();
	/**
	 * 保存附件信息
	 */
	void saveUploadFile(String billCode, String headid, List<FileTransfer> ftList, String userid);
	
	List<UploadFile> getUploadFileList(String billCode, String headid);
	/**
	 * 根据 id 获取上传文件信息
	 */
	UploadFile getUploadFile(String id);
	/**
	 * 保存上传文件
	 */
	String saveUploadFile(String filename, String order, String filepath);
	/**
	 * 更新上传文件
	 */
	void updateLoadFiles(String billCode, String headid, List<String> saveIdList, List<String> deleteIdList, String userid);
}
