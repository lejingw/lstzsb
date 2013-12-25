package com.totyu.controller.common;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
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
        down(fileName, uploadFile.getPath(), req, res);
	}
	
	private void down(String fileName, String path, HttpServletRequest req, HttpServletResponse resp){
		OutputStream os = null;
	    try {
	    	resp.reset();
	    	os = resp.getOutputStream();	        
	        resp.setHeader("Content-Disposition", "attachment; filename=\"" + new String(fileName.getBytes(), "ISO8859-1") + "\"");
//	        resp.setContentType("application/vnd.ms-excel");
	        resp.setContentType("application/octet-stream; charset=utf-8");

	        String realPath = req.getSession().getServletContext().getRealPath("/");
			if(realPath.endsWith("/"))
				realPath = realPath.substring(0, realPath.length()-1);
	        File file = new File(realPath + path);
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
	
	@RequestMapping("/downloadExcelTemplate")
	public void downloadExcelTemplate(String path, Model model, HttpServletRequest req, HttpServletResponse resp) {
        path = CommonUtil.toUTF8(path);
        String fileName = path.substring(path.lastIndexOf("/")+1, path.length());
        down(fileName, "/velocity" + path, req, resp);
	}
}
