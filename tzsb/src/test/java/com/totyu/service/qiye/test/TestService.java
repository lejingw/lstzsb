package com.totyu.service.qiye.test;

import java.util.Date;
import java.util.List;

import com.totyu.vo.qiye.jbxx.Scxkzgl;
import com.totyu.vo.qiye.test.TestVo;

public interface TestService {
	
	List<Scxkzgl> getPageData(TestVo testVo);
	

	
	String save(TestVo testVo);
	
	int save2(TestVo testVo);
	
	double save3(TestVo testVo);
	
	Date save4(TestVo testVo);



	int testWebService();
}
