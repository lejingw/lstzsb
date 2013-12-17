package com.totyu.dwr.menhu.sys;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.totyu.common.CommonUtil;
import com.totyu.service.menhu.sys.MenhuSysService;
import com.totyu.vo.menhu.sys.User;

@Controller
@RemoteProxy(name="MenhuSysDwr")
public class MenhuSysDwr {
	
	@SuppressWarnings("unused")
	private static Logger logger = Logger.getLogger(MenhuSysDwr.class);
	
	@Autowired
	private MenhuSysService menhuSysService;
	
	@RemoteMethod
	public String doLogin(String username, String password, String type, HttpSession session) {
		// 用户存在性验证
		User user = menhuSysService.getLoginUserInfo(username);
		if (user == null) {
			return "用户不存在！";
		} else if (!user.getPassword().equals(password)) {
			return "密码不正确！";
		} else if(!"1".equals(user.getStatus())){
			return "用户已停用";
		}
		CommonUtil.addSessionToken(session, user.getId(), user.getUsername(), user.getOrgid());
		CommonUtil.setSessionLoginType(session, type);
		return null;
	}
}
