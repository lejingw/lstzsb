package com.jatools.web.listener;

import java.io.InputStream;
import java.util.Properties;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import org.apache.log4j.Logger;
import org.springframework.web.context.support.WebApplicationContextUtils;
import com.jatools.common.Global;
import com.jatools.web.util.StringUtil;
/**
 * servletcontext 监听器
 * 
 */
public class TzsbServletContextListener implements ServletContextListener {

	private static final Logger log = Logger.getLogger(TzsbServletContextListener.class);

    public void contextDestroyed(ServletContextEvent event) {
    }
    
    /**
     * servletContext 初始化时候做同步配置文件工作
     */
    public void contextInitialized(ServletContextEvent event) {
    	Properties global = new Properties();
    	try {
    		InputStream is = getClass().getResourceAsStream("/global.properties");
    		global.load(is);
        } catch (Exception e) {
            log.debug("加载属性文件出错:/global.properties", e);
        }
        Global.springContext = WebApplicationContextUtils.getWebApplicationContext(event.getServletContext());
    }
}
