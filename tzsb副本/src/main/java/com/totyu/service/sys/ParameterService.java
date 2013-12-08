package com.totyu.service.sys;

import java.util.Map;

import com.totyu.common.Pager;
import com.totyu.vo.sys.Parameter;

public interface ParameterService {

	/**
	 * 获取分页数据
	 * @param condition
	 * @return
	 */
	Pager getParameterData(Map<String, String> condition);
	
	Parameter getParameter(String name);

	void updateParameter(Parameter parameter, String userId);
	
	void deleteParameter(String name);
}
