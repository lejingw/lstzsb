package com.totyu.common;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.log4j.Logger;

import com.totyu.controller.common.QuerySessionKeyIntf;
import com.totyu.vo.sys.AuthToken;
import com.totyu.web.util.StringUtil;

public class CommonUtil {
	private static Logger logger = Logger.getLogger(CommonUtil.class);
	private static final String AUTH_TOKEN					= "auth_token";			//session中的用户登陆信息
	private static final String LOGIN_TYPE					= "login_type";			//登陆类型0企业登陆1监察登陆2乡镇登陆3行业登陆
	
	/**
	 * 从request中获取参数信息，未找到返回null
	 * @param req
	 * @param name
	 * @return
	 */
	public static String getParameterNull(HttpServletRequest req, String name){
		return req.getParameter(name);
	}
	/**
	 * 从request中获取参数信息，未找到返回defaultValue
	 * @param req
	 * @param name
	 * @return
	 */
	public static String getParameterNull(HttpServletRequest req, String name, String defaultValue){
		String tmp = getParameterNull(req, name);
		if(null == tmp)
			return defaultValue;
		return tmp;
	}
	public static Object getAttribute(HttpSession session, String name){
		return session.getAttribute(name);
	}
	public static Object getAttribute(HttpSession session, String name, Object defaultValue){
		Object tmp = getAttribute(session, name);
		logger.debug("从session取值：" +name+"："+tmp);
		if(null == tmp)
			return defaultValue;
		return tmp;
	}
	
	/**
	 * 从request中获取参数信息，未找到返回空字符串""
	 * @param req
	 * @param name
	 * @return
	 */
	public static String getParameterEmpty(HttpServletRequest req, String name){
		String val = req.getParameter(name);
		if(null == val)	return "";
		return val;
	}
	/**
	 * 获取登陆用户id
	 * @param req
	 * @return
	 */
	public static String getSessionUserId(HttpServletRequest req){
		if(null == req){
			return null;
		}
		HttpSession session = req.getSession();
		return getSessionUserId(session);
	}
    
    /**
     * 判断客户是否登陆
     * @param session
     * @return false : 未登录；true ： 已登录;
     */
    public static final boolean isLogined(HttpServletRequest request){
    	if(request!=null){
	    	HttpSession session = request.getSession();
	    	return isLogined(session);
	    }else{
	    	return false;
	    }
    }
    private static AuthToken getAuthToken(HttpSession session){
    	return (AuthToken) session.getAttribute(AUTH_TOKEN);
    }
    /**
     * 判断客户是否登陆
     * @param session
     * @return false : 未登录；true ： 已登录;
     */
    public static final boolean isLogined(HttpSession session){
		if (session != null) {
			return null != getAuthToken(session) && null != session.getAttribute(LOGIN_TYPE);
		} else {
			return false;
		}
    }
    
	public static void addSessionToken(HttpSession session, String userid, String username, String orgid) {
		if(null != session){
			AuthToken authToken = new AuthToken();
			authToken.setUserId(userid);
			authToken.setUserName(username);
			authToken.setOrgId(orgid);
			session.setAttribute(AUTH_TOKEN, authToken);
		}
	}
	
	public static void logoutClearSession(HttpSession session) {
		if(null != session){
			session.removeAttribute(AUTH_TOKEN);
			session.removeAttribute(LOGIN_TYPE);
		}
	}
	
	/**
	 * 获取登陆用户id
	 * @param req
	 * @return
	 */
	public static String getSessionUserId(HttpSession session){
		if(null == session){
			return null;
		}
		AuthToken authToken = getAuthToken(session);
		if(null == authToken){
			throw new RuntimeException("session失效，请重新登录");
		}
		return authToken.getUserId();
	}
	/**
	 * 获取登陆用户name
	 * @param req
	 * @return
	 */
	public static String getSessionUserName(HttpSession session){
		if(null == session){
			return null;
		}
		AuthToken authToken = getAuthToken(session);
		if(null == authToken){
			throw new RuntimeException("session失效，请重新登录");
		}
		return authToken.getUserName();
	}
	/**
	 * 获取登录组织
	 * @param session
	 * @return
	 */
	public static String getSessionOrgId(HttpServletRequest req){
		if(null == req){
			return null;
		}
		HttpSession session = req.getSession();
		return getSessionOrgId(session);
	}
	/**
	 * 获取登录组织
	 * @param session
	 * @return
	 */
	public static String getSessionOrgId(HttpSession session) {
		if(null == session){
			return null;
		}
		AuthToken authToken = getAuthToken(session);
		if(null == authToken){
			throw new RuntimeException("session失效，请重新登录");
		}
		return authToken.getOrgId();
	}
	/**
	 * 获取登录组织
	 * @param session
	 * @return
	 */
	public static void setSessionLoginType(HttpSession session, String type) {
		if(null != session){
			session.setAttribute(LOGIN_TYPE, type);
		}
	}
	/**
	 * 获取登录组织
	 * @param session
	 * @return
	 */
	public static String getSessionLoginType(HttpSession session) {
		if(null == session){
			return null;
		}
		return (String)session.getAttribute(LOGIN_TYPE);
	}
	/**
	 * 获取登录类型
	 * @param session
	 * @return
	 */
	public static String getSessionType(HttpSession session) {
		if(null == session){
			return null;
		}
		AuthToken authToken = getAuthToken(session);
		if(null == authToken){
			throw new RuntimeException("session失效，请重新登录");
		}
		return authToken.getOrgId();
	}
	public static String toUTF8(String selectedNames) {
		try {
			if(null == selectedNames)	return null;
			return new String(selectedNames.getBytes("ISO-8859-1"),"UTF-8");
		} catch (Exception e) {
			return null;
		}
	}
	/**
	 * 根据Class的可写字段，从request中获取值，并生成对应的实例
	 * 注意此方法只会写String类型的字段
	 * @param req
	 * @param cls
	 * @return
	 * @throws Exception
	 */
	public static <T> T request2Object(HttpServletRequest req, Class<T> cls){
		try {
			if(req == null || cls == null) {
				return null;
			}
			T rtnObj = cls.newInstance();
			Field[] feilds = cls.getDeclaredFields();
			for( Field field: feilds ) {
				if( StringUtil.isBlank(req.getParameter(field.getName()))) {
					continue;
				}
				if( PropertyUtils.isWriteable(rtnObj, field.getName())) {
					Class<?> fieldClazz = PropertyUtils.getPropertyType(rtnObj, field.getName());
					if(fieldClazz == java.lang.String.class){
						PropertyUtil.setProperty(rtnObj, field.getName(), getParameterNull(req, field.getName()));
					}
				}
			}
			return rtnObj;
		} catch (Exception e) {
			logger.error("根据request创建" + cls.getName() + "失败");
			throw new RuntimeException("根据request创建" + cls.getName() + "失败");
		}
	}
	
	/**
	 * 添加start和limit key
	 * @param keys
	 * @return
	 */
	private static String[] addStartLimitKey(String[] keys){
		if(null == keys){
			keys = new String[0];
		}
	    String[] pageKeys = Arrays.copyOf(keys, keys.length + 2);

		pageKeys[keys.length] = "start";
		pageKeys[keys.length + 1] = "limit";
		return pageKeys;
	}
	
	/**
	 * 从request获取值
	 * @param req
	 * @param condition
	 * @param keys
	 */
	private static void getRequestParameter(HttpServletRequest req, Map<String, String> condition, String... keys) {
		if(null == keys||keys.length<1){
			return ;
		}
		try {
			for(String key : keys){
				String tmp = getParameterNull(req, key);
				if(null != tmp){
					condition.put(key, tmp);//new String(tmp.getBytes("ISO-8859-1"),"utf-8"));
				}
			}
			condition.put("start", getParameterNull(req, "start"));
			condition.put("limit", getParameterNull(req, "limit"));
		} catch (Exception e) {
			logger.error(e);
		}
	}
	private static void setDefaultStartLimit(Map<String, String> condition, String startDefaultValue, String limitDefaultValue) {
		if(StringUtil.isEmpty(condition.get("start"))){
			condition.put("start", startDefaultValue);
		}
		if(StringUtil.isEmpty(condition.get("limit"))){
			condition.put("limit", limitDefaultValue);
		}
	}
	/**
	 * 从request获取查询条件，包含start（默认为0）、limit（默认15）参数
	 * @param req
	 * @param strings
	 * @return
	 */
	public static Map<String, String> getConditionForPage(HttpServletRequest req, String... keys) {
		keys = addStartLimitKey(keys);
		Map<String, String> condition = new HashMap<String, String>();
		getRequestParameter(req, condition, keys);
		setDefaultStartLimit(condition, Global.PAGE_DEFAULT_START, Global.PAGE_DEFAULT_LIMIT);
		return condition;
	}
	/**
	 * 从request获取查询条件，包含start（默认为0）、limit（默认15）参数
	 * @param req
	 * @param strings
	 * @return
	 */
	public static Map<String, String> getConditionForPageSession(Object controller, HttpServletRequest req, String... keys) {
		keys = addStartLimitKey(keys);
		Map<String, String> condition = new HashMap<String, String>();
		getRequestParameter(req, condition, keys);
		getSessionParameter(controller, req, condition, keys);
		setDefaultStartLimit(condition, Global.PAGE_DEFAULT_START, Global.PAGE_DEFAULT_LIMIT);
		return condition;
	}
	private static String getConditionSessionKey(Object controller){
		if(controller instanceof QuerySessionKeyIntf){
			return "query_key_" + controller.getClass().getName() + "_" + ((QuerySessionKeyIntf)controller).getKey();
		}else{
			return "query_key_" + controller.getClass().getName();
		}
	}
	private static boolean isUnQuerys(Map<String, String> condition){
		if(StringUtil.isNotEmpty(condition.get("start")) || StringUtil.isNotEmpty(condition.get("limit"))){
        	 return false;
		}
		return true;
	}
	
	/**
     * 从session获取值
     * @param req
     * @param condition
     * @param keys
     */
	public static void getSessionParameter(Object controller, HttpServletRequest req, Map<String, String> condition, String... keys) {
		if (null == keys || keys.length < 1) {
			return;
		}
		String conditionSessionKey = getConditionSessionKey(controller);
		// 检查是否进行页面查询
		HttpSession session = req.getSession();
		if (isUnQuerys(condition)) {// 显示页面，从session获取查询条件
			Object obj = session.getAttribute(conditionSessionKey);
			if (null != obj && obj instanceof Map) {
				Map<String, String> ssnCondition = (Map<String, String>) obj;
				for (String key : ssnCondition.keySet()) {
					condition.put(key, ssnCondition.get(key));
				}
			}
		}
		session.setAttribute(conditionSessionKey, condition);
	}
}