package com.totyu.service.sys.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totyu.common.Pager;
import com.totyu.dao.sys.ParameterDao;
import com.totyu.service.sys.ParameterService;
import com.totyu.vo.sys.Parameter;
import com.totyu.web.cache.ParameterCache;
import com.totyu.web.util.DateUtil;
import com.totyu.web.util.StringUtil;

@Service("parameterService")
public class ParameterServiceImpl implements ParameterService {
	@Autowired
	private ParameterDao parameterDao;

	@Override
	public Pager getParameterData(Map<String, String> condition) {
		return this.parameterDao.getParameterData(condition);
	}

	@Override
	public Parameter getParameter(String name) {
		return this.parameterDao.getParameter(name);
	}

	@Override
	public void updateParameter(Parameter parameter, String userId) {
		if(parameter == null || StringUtil.isBlank(parameter.getName())){
			throw new RuntimeException("数据不合法");
		}
		parameter.setUpdateDate(DateUtil.getCurrentDate18());
		parameter.setUpdateId(userId);
		this.parameterDao.updateParameter(parameter);
		ParameterCache.refresh();// 刷新缓存
	}

	@Override
	public void deleteParameter(String name) {
		this.parameterDao.deleteParameter(name);
	}

}
