package com.totyu.controller.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.common.CommonUtil;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.sys.UploadFile;

@Controller
@RequestMapping("/common")
public class SysCommonController {
	@Autowired
	private SysCommonService sysCommonService;

	@RequestMapping("/download")
	public void download(String id, Model model, HttpServletRequest req, HttpServletResponse res) {
		UploadFile uploadFile = sysCommonService.getUploadFile(id);
	    String fileName = uploadFile.getMingcheng();
	    CommonUtil.download(fileName, uploadFile.getPath(), req, res);
	}
	
	@RequestMapping("/downloadExcelTemplate")
	public void downloadExcelTemplate(String path, Model model, HttpServletRequest req, HttpServletResponse resp) {
        path = CommonUtil.toUTF8(path);
        String fileName = path.substring(path.lastIndexOf("/")+1, path.length());
        CommonUtil.download(fileName, "/velocity" + path, req, resp);
	}
}
