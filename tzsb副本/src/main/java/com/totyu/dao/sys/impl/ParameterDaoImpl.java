package com.totyu.dao.sys.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.totyu.common.Pager;
import com.totyu.dao.BaseDao;
import com.totyu.dao.sys.ParameterDao;
import com.totyu.vo.sys.Parameter;

@Repository
public class ParameterDaoImpl extends BaseDao implements ParameterDao {

	@Override
	public Pager getParameterData(Map<String, String> condition) {
		return this.executeQueryForPager("Parameter.getParameterPageData", "Parameter.getParameterTotalCount", condition);
	}

	@Override
	public Parameter getParameter(String name) {
		return (Parameter)this.executeQueryForObject("Parameter.getParameter", name);
	}

	@Override
	public void updateParameter(Parameter parameter) {
		this.executeUpdate("Parameter.updateParameter", parameter);

	}

	@Override
	public void deleteParameter(String name) {
		this.executeUpdate("Parameter.deleteParameter", name);
	}

}
