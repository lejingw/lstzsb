package com.totyu.dao.sys;

import java.util.Map;

import com.totyu.common.Pager;
import com.totyu.vo.sys.Parameter;

public interface ParameterDao {

	/**
	 * 获取分页数据
	 * @param condition
	 * @return
	 */
	Pager getParameterData(Map<String, String> condition);
	
	Parameter getParameter(String name);

	void updateParameter(Parameter parameter);
	
	void deleteParameter(String name);
}
