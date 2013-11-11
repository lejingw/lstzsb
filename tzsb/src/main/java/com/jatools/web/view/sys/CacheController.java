package com.jatools.web.view.sys;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;

import com.jatools.common.CommonUtil;
import com.jatools.web.cache.DictCache;
import com.jatools.web.cache.OrgCache;
import com.jatools.web.cache.UserCache;
import com.jatools.web.form.sys.CacheForm;
import com.jatools.web.util.StringUtil;
import com.jatools.web.view.BaseMultiActionController;

public class CacheController extends BaseMultiActionController {
	private static Logger logger = Logger.getLogger(CacheController.class);
//	private WorkflowService workflowService;
//	
//	public void setWorkflowService(WorkflowService workflowService) {
//		this.workflowService = workflowService;
//	}

	@Override
	public ModelAndView doPerform(HttpServletRequest req, HttpServletResponse res) {
		CacheForm form = new CacheForm();
		form.setMessage("刷新缓存成功");
		return new ModelAndView("sys/refreshCache", "form", form);
	}
	
	/**
	 * 刷新缓存
	 * @param req
	 * @param res
	 * @return
	 */
	public ModelAndView refresh(HttpServletRequest req, HttpServletResponse res) {
		String items = CommonUtil.getParameterEmpty(req, "items");
		CacheForm form = new CacheForm();
		if(StringUtil.isNotEmpty(items)){
			try {
				String[] itemArr = items.split(",");
				for(String item:itemArr){
					refresh(item);
					//刷新加盟系统缓存
//					workflowService.refreshJmCache(item);
				}
				form.setMessage("刷新缓存成功["+items+"]");
			} catch (Exception e) {
				form.setMessage("刷新缓存失败");
				logger.error(e);
			}
		}else{
			form.setMessage("不能获取要刷新的项目");
		}
		return new ModelAndView("sys/refreshCache", "form", form);
	}
	private void refresh(String item){
		if("user".equals(item)){
			UserCache.refresh();
			logger.debug("刷新用户数据成功");
		}else if("dict".equals(item)){
			DictCache.refresh();
			logger.debug("刷新数据字典成功");
		}else if("org".equals(item)){
			OrgCache.refresh();
			logger.debug("刷新组织成功");
		}
	}
}
