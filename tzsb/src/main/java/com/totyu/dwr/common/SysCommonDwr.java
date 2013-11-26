package com.totyu.dwr.common;

import java.util.List;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.totyu.service.common.SysCommonService;
import com.totyu.vo.sys.UploadFile;
import com.totyu.web.cache.ParameterCache;

@Controller
@RemoteProxy(name="SysCommonDwr")
public class SysCommonDwr {
	@Autowired
	private SysCommonService sysCommonService;
	
	/**
	 * 获取系统参数配置值
	 */
	@RemoteMethod
	public String getParameterValue(String name){
		return ParameterCache.getInstance().getValue(name);
	}

	/**
	 * 获取单据上传文件
	 */
	@RemoteMethod
	public List<UploadFile> getUploadFile(String billCode, String headid){
		List<UploadFile> list = sysCommonService.getUploadFileList(billCode, headid);
		return list;
	}
}