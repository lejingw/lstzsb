package com.jatools.web.form.sys;

import java.util.HashMap;
import java.util.Map;

import com.jatools.web.cache.DictCache;
import com.jatools.web.cache.OrgCache;
import com.jatools.web.cache.ParameterCache;
import com.jatools.web.cache.UserCache;
import com.jatools.web.form.BaseForm;

public class CacheForm extends BaseForm {
	private Map<String, String> map = null;
	public Map<String, String> getMap(){
		if(null == map){
			map = new HashMap<String, String>();
			map.put("user", UserCache.getInstance().getRefreshTime());
			map.put("dict", DictCache.getInstance().getRefreshTime());
			map.put("parameter", ParameterCache.getInstance().getRefreshTime());
			map.put("org", OrgCache.getInstance().getRefreshTime());
		}
		return map;
	}
}
