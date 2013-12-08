package com.totyu.controller.jiancha.other;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.web.util.DateUtil;

@Controller
@RequestMapping("/jiancha/other/FileUpDownload")
public class FileUpDownloadController {

	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest req, HttpServletResponse res) {
		return "jiancha/other/fileUpDownload";
	}
	
	@RequestMapping("/download")
	public String download(Model model, HttpServletRequest req, HttpServletResponse res) {
	    OutputStream os = null;
	    try {
	    	os = res.getOutputStream();
	        res.reset();
	        String fileName = new String(("结果"+DateUtil.formatSdf8(new Date())+".txt") .getBytes("GBK"), "UTF-8");
	        System.out.println(fileName);
	        res.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
	        res.setContentType("application/octet-stream; charset=utf-8");
			File file = new File("/Users/wanglj/workspaces/lstzsb_workspace/tzsb/src/main/webapp/aaa.jpg");
	        os.write(FileUtils.readFileToByteArray(file));
	        os.flush();
	    } catch(Exception e){
	    	
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
