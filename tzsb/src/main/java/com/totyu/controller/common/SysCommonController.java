package com.totyu.controller.common;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.common.Global;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.sys.UploadFile;

@Controller
@RequestMapping("/common")
public class SysCommonController {
	@Autowired
	private SysCommonService sysCommonService;

	@RequestMapping("/download")
	public String download(String id, Model model, HttpServletRequest req, HttpServletResponse res) {
		UploadFile uploadFile = sysCommonService.getUploadFile(id);
	    OutputStream os = null;
	    try {
	    	os = res.getOutputStream();
	        res.reset();
	        //String fileName = uploadFile.getMingcheng();//new String(uploadFile.getMingcheng().getBytes("GBK"), "UTF-8");
	        String fileName = URLEncoder.encode(uploadFile.getMingcheng(),"utf-8");
	        res.setHeader("Content-Disposition", "attachment; filename=" + fileName + "");
	        res.setContentType("application/octet-stream; charset=utf-8");
	        File file = new File(Global.getPicUploadPath() + uploadFile.getPath());
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
		return null;
	}
}