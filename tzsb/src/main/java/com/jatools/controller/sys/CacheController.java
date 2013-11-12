package com.jatools.controller.sys;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jatools.common.CommonUtil;
import com.jatools.web.cache.DictCache;
import com.jatools.web.cache.OrgCache;
import com.jatools.web.cache.ParameterCache;
import com.jatools.web.cache.UserCache;
import com.jatools.web.util.StringUtil;

@Controller
@RequestMapping("/sys/cache")
public class CacheController {
	private static Logger logger = Logger.getLogger(CacheController.class);

	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest req, HttpServletResponse res) {
		model.addAttribute("map", getMap());
		return "sys/refreshCache";
	}
    public Map<String, String> getMap(){
    	Map<String, String> map = null;
        if(null == map){
            map = new HashMap<String, String>();
            map.put("user", UserCache.getInstance().getRefreshTime());
            map.put("dict", DictCache.getInstance().getRefreshTime());
            map.put("parameter", ParameterCache.getInstance().getRefreshTime());
            map.put("org", OrgCache.getInstance().getRefreshTime());
        }
        return map;
    }
	/**
	 * 刷新缓存
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping("/refresh")
	public String refresh(Model model, HttpServletRequest req, HttpServletResponse res) {
		String items = CommonUtil.getParameterEmpty(req, "items");
		if(StringUtil.isNotEmpty(items)){
			try {
				String[] itemArr = items.split(",");
				for(String item:itemArr){
					refresh(item);
				}
				model.addAttribute("message", "刷新缓存成功["+items+"]");
			} catch (Exception e) {
				model.addAttribute("message", "刷新缓存失败");
				logger.error(e);
			}
		}else{
			model.addAttribute("message", "不能获取要刷新的项目");
		}
		model.addAttribute("map", getMap());
		return "sys/refreshCache";
	}
	private void refresh(String item){
		if("user".equals(item)){
			UserCache.refresh();
			logger.debug("刷新用户数据成功");
		}else if("dict".equals(item)){
			DictCache.refresh();
			logger.debug("刷新数据字典成功");
		}else if("parameter".equals(item)){
			ParameterCache.refresh();
			logger.debug("刷新系统参数成功");
		}else if("org".equals(item)){
			OrgCache.refresh();
			logger.debug("刷新组织成功");
		}
	}
}
