package com.totyu.service.qiye.test.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totyu.common.Pager;
import com.totyu.common.exception.TzsbException;
import com.totyu.dao.qiye.jbxx.ScxkzglDao;
import com.totyu.service.qiye.test.TestService;
import com.totyu.vo.qiye.jbxx.Scxkzgl;
import com.totyu.vo.qiye.test.TestVo;
import com.totyu.web.ws.WebServiceClient;
import com.totyu.web.ws.api.WebServiceName;
import com.totyu.web.ws.api.WsException;

@Service
public class TestServiceImpl implements TestService {
	@Autowired
	private ScxkzglDao scxkzglDao;
	
	@Autowired
	private WebServiceClient webServiceClient;
	
	public List<Scxkzgl> getPageData(TestVo testVo){
		Map<String, String> condition = new HashMap<String, String>();
		condition.put("start", testVo.getStart() + "");
		condition.put("limit", testVo.getLimit() + "");
		condition.put("zsbh", testVo.getZsbh());
		Pager pager = scxkzglDao.getPageData(condition, testVo.getOrgId());
		return pager.getPageData();
	}
	
	public String save(TestVo testVo){
		return "success:"+(testVo.getStart()+testVo.getLimit());
	}
	
	public int save2(TestVo testVo){
		return -1;
	}
	
	public double save3(TestVo testVo){
		return 1.1;
	}
	
	public Date save4(TestVo testVo){
		return new Date();
	}
	
	public int testWebService(){
		TestVo testData = new TestVo();
		testData.setStart(111);
		testData.setLimit(2222);
		/**
		 * 调用接口保存使用单位信息
		 */
		try {
			List list = webServiceClient.callQuery(WebServiceName.SCXKZ_QUERY, testData);
			return list.size();
		} catch (WsException e) {
			throw new TzsbException("调用webservice失败:"+e.getMessage());
		}
	}
}
