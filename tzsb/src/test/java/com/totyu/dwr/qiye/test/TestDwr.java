package com.totyu.dwr.qiye.test;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.totyu.service.qiye.test.TestService;

/**
 * 维保许可证管理
 * 
 * @author wanglj
 */
@Controller
@RemoteProxy(name = "TestDwr")
public class TestDwr {
	@Autowired
	private TestService testService;
	
	@RemoteMethod
	public String testWebService(){
		try {
			int count = testService.testWebService();
			return "返回结果条数："+count;
		} catch (Exception e) {
			return e.getMessage();
		}
	}
}
