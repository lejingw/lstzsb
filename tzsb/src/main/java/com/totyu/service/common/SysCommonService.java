package com.totyu.service.common;

import java.util.List;

import com.totyu.common.Pager;
import com.totyu.vo.common.Dict;
import com.totyu.vo.common.Org;
import com.totyu.vo.common.Parameter;
import com.totyu.vo.common.SelectorOption;
import com.totyu.vo.common.User;
import com.totyu.vo.qiye.jbxx.Dwxx;
import com.totyu.vo.sys.UploadFile;


public interface SysCommonService {
	/**
	 * 获取单据编号
	String getBillno(String billCode);
	 */
	/**
	 * 获取所有用户信息
	 * @return
	 */
	public List<User> getAllUser();
	/**
	 * 获取所有数据字典项
	 * @return
	 */
	List<Dict> getAllDictItem();
	/**
	 * 获取所有系统参数配置
	 */
	List<Parameter> getAllParameters();
	/**
	 * 获取所有组织数据
	 */
	List<Org> getAllOrg();
	/**
	 * 保存上传文件
	 */
	String saveUploadFile(String filename, String order, String filepath);
	/**
	 * 获取单据上传文件列表
	 */
	List<UploadFile> getUploadFileList(String billCode, String headid);
	/**
	 * 获取最新的50张图片
	 */
	List<UploadFile> getLatest50Pics();
	/**
	 * 根据 id 获取上传文件信息
	 */
	UploadFile getUploadFile(String id);

	/**
	 * web service调用日志
	 */
	String writeWebServiceLog(boolean inOutFlag, String respId, String msg);
	/**
	 * 获取单位信息
	 */
	Dwxx getDwxxById(String dwid);
	/**
	 * 获取单位分页信息
	 */
	Pager getOrgPagerData(String orgType, String start, String limit, String queryName);

	/**
	 * 获取设备种类下拉列表数据
	 * 
	 * @return 设备类型一览数据
	 */
	List<SelectorOption> getSbzl();
	
	/**
	 * 获取设备类别下拉列表数据
	 * 
	 * @return 设备类别一览数据
	 */
	List<SelectorOption> getSblb(String fjdm, String dmjb);
}
