package com.totyu.dwr.qiye.common;

import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.totyu.service.qiye.common.QiyeCommonService;
import com.totyu.service.qiye.jbxx.DwxxService;
import com.totyu.vo.qiye.jbxx.Dwxx;

@Controller
@RemoteProxy(name = "QiyeCommonDwr")
public class QiyeCommonDwr {
	@Autowired
	private QiyeCommonService qiyeCommonService;
	@Autowired
	private DwxxService dwxxService;//单位信息
	/**
	 * 根据单位id获取单位信息
	 */
	public Dwxx getDwxxById(String orgid){
		return dwxxService.getDwxxById(orgid);
	}
}
