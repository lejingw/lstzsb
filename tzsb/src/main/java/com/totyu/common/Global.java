package com.totyu.common;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.springframework.web.context.WebApplicationContext;

/**
 * 应用全局配置文件
 */
public class Global {
	public static WebApplicationContext springContext = null;
	
	public static final String 			COOKIE_USER_NAME									= "zs_user_name";//账号密码 cookie名称
	public static final String			COOKIE_USER_PASSWORD								= "zs_user_password";//账号密码 cookie名称
	public static final int				COOKIE_MAX_AGE										= 36288000;//单位秒
	public static final String			COOKIE_CLIENT_NAME									= "client_name";
	public static final String			COOKIE_IS_LOGIN										= "is_login";

	public static final String			PAGE_DEFAULT_START									= "0";//列表默认从1开始
	public static final String			PAGE_DEFAULT_LIMIT									= "15";//列表默认每页15行
	public static final String			PAGE_DEFAULT_LIMIT_WIN								= "10";//弹出框列表默认每页10行
	private static String				PIC_UPLOAD_PATH										= null;

	private static Properties properties = null;
	public static void load(InputStream is){
		try {
			if(null == properties){
				properties = new Properties();
				properties.load(is);
			}
			is.close();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				if(null != is){
					is.close();
					is = null;
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static String getPicUploadPath(){
		if(null == PIC_UPLOAD_PATH){
			String path = properties.getProperty("pic_upload_path", "/upload/");
			if(!path.startsWith("/"))
				path = "/" + path;
			if(path.endsWith("/"))
				path = path.substring(0, path.length()-1);
			PIC_UPLOAD_PATH = path;
		}
		return PIC_UPLOAD_PATH;
	}
}
