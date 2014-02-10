package com.totyu.common;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.io.FileUtils;
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
	 * 从request获取值
	 * @param req
	 * @param condition
	 * @param keys
	 */
	private static Map<String, String> getRequestParameter(HttpServletRequest req, String... keys) {
		Map<String, String> condition = new HashMap<String, String>();
		if(null != keys && keys.length > 0){
			for(String key : keys){
				String tmp = getParameterNull(req, key);
				if(null != tmp){
					condition.put(key, tmp);//new String(tmp.getBytes("ISO-8859-1"),"utf-8"));
				}
			}
		}
		condition.put("start", getParameterNull(req, "start"));
		condition.put("limit", getParameterNull(req, "limit"));
		return condition;
	}
	/**
	 * 从request获取查询条件，包含start（默认为0）、limit（默认15）参数
	 * @param req
	 * @param strings
	 * @return
	 */
	public static Map<String, String> getConditionForPage(HttpServletRequest req, String... keys) {
		Map<String, String> condition = getRequestParameter(req, keys);
		setDefaultStartLimit(condition);
		return condition;
	}

	/**
	 * 菜单进来的时候，清空相关机能的session
	 * @param controller
	 * @param req
	 */
	public static void removeConditionForPageSession(Object controller, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.removeAttribute(getConditionSessionKey(controller));
	}

	/**
	 * 从request获取查询条件，包含start（默认为0）、limit（默认15）参数
	 * @param req
	 * @param strings
	 * @return
	 */
	public static Map<String, String> getConditionForPageSession(Object controller, HttpServletRequest req, String... keys) {
		Map<String, String> condition = getRequestParameter(req, keys);
		
		String conditionSessionKey = getConditionSessionKey(controller);
		// 检查是否进行页面查询
		HttpSession session = req.getSession();
		if (isQuerys(req)) {
			//查询的话，从第一页开始
			condition.put("start", Global.PAGE_DEFAULT_START);
		}else{
			// 从session获取查询条件
			Object obj = session.getAttribute(conditionSessionKey);
			if (null != obj && obj instanceof Map) {
				Map<String, String> ssnCondition = (Map<String, String>) obj;
				for (String key : ssnCondition.keySet()) {
					if(StringUtil.isEmpty(condition.get(key))){
						condition.put(key, ssnCondition.get(key));
					}
				}
			}
		}
		setDefaultStartLimit(condition);
		session.setAttribute(conditionSessionKey, condition);
		
		//拷贝session中的conditon对象，防止修改
		Map<String, String> map = new HashMap<String, String>();
		for(String key : condition.keySet()){
			map.put(key, condition.get(key));
		}
		return map;
	}
	private static void setDefaultStartLimit(Map<String, String> condition) {
		if(StringUtil.isEmpty(condition.get("start"))){
			condition.put("start", Global.PAGE_DEFAULT_START);
		}
		if(StringUtil.isEmpty(condition.get("limit"))){
			condition.put("limit", Global.PAGE_DEFAULT_LIMIT);
		}
	}

	private static String getConditionSessionKey(Object controller){
		if(controller instanceof QuerySessionKeyIntf){
			return "query_key_" + controller.getClass().getName() + "_" + ((QuerySessionKeyIntf)controller).getKey();
		}else{
			return "query_key_" + controller.getClass().getName();
		}
	}

	private static boolean isQuerys(HttpServletRequest req){
		if("1".equals(CommonUtil.getParameterNull(req, "_query_"))){
			return true;
		}
		return false;
	}

//	private static void aaa(){
//		System.out.println("---------------------");
//		Properties p = System.getProperties();
//		Enumeration enu = p.keys();
//		while(enu.hasMoreElements()){
//			Object key = enu.nextElement();
//			System.out.println(key+":"+p.getProperty(key.toString()));
//		}
//		System.out.println("---------------------");
//		Map map = System.getenv();
//		Iterator iter = map.keySet().iterator();
//		while(iter.hasNext()){
//			Object key = iter.next();
//			System.out.println(key+":"+map.get(key));
//		}
//		System.out.println("---------------------");
//	}
	
	/**
	 * 获取应用根目录
	 * @param req
	 * @return
	 */
	public static String getRealPath(HttpServletRequest req){
		String realPath = req.getSession().getServletContext().getRealPath("/");
		if(realPath.endsWith("/"))
			realPath = realPath.substring(0, realPath.length()-1);
		return realPath;
	}
	
	public static void download(String fileName, String path, HttpServletRequest req, HttpServletResponse resp){
		OutputStream os = null;
	    try {
	    	resp.reset();
	    	os = resp.getOutputStream();
	    	System.out.println("os.name=" + System.getProperties().getProperty("os.name"));
	    	if("Mac OS X".equals(System.getProperties().getProperty("os.name"))){	    		
	    		resp.setHeader("Content-Disposition", "attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO8859-1") + "\"");
	    	}else{
	   	    	resp.setHeader("Content-Disposition", "attachment; filename=\"" + new String(fileName.getBytes("GBK"), "ISO8859-1") + "\"");
	    	}
	        resp.setContentType("application/octet-stream; charset=utf-8");
	        
	        File file = new File(getRealPath(req) + path);
	        os.write(FileUtils.readFileToByteArray(file));
	        os.flush();
	    } catch(Exception e){
	    	e.printStackTrace();
	    } finally {
	    	try {
            	if (os != null) {
					os.close();
					os = null;
	        	}
			} catch (IOException e) {
				e.printStackTrace();
	        }
	    }
	}
	/**
	 * md5加密
	 */
	public final static String md5(String s) {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
		try {
			byte[] btInput = s.getBytes();
			// 获得MD5摘要算法的 MessageDigest 对象
			MessageDigest mdInst = MessageDigest.getInstance("MD5");
			// 使用指定的字节更新摘要
			mdInst.update(btInput);
			// 获得密文
			byte[] md = mdInst.digest();
			// 把密文转换成十六进制的字符串形式
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return new String(str);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	/**
	 * 获取request的IP地址
	 * @param request
	 * @return
	 */
    public static String getIpAddr(HttpServletRequest request) {
        if (request == null) {
            return "unknown";
        }
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("X-Forwarded-For");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("X-Real-IP");
        }

        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }
}