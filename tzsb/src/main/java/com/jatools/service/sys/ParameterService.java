package com.jatools.service.sys;

import java.util.Map;

import com.jatools.common.Pager;
import com.jatools.vo.sys.Parameter;

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
