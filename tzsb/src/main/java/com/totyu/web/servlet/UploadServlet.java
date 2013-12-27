package com.totyu.web.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.totyu.common.CommonUtil;
import com.totyu.common.Global;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.sys.UploadFile;

@SuppressWarnings("serial")
public class UploadServlet extends HttpServlet {
	
	private SysCommonService sysCommonService;
	
	public UploadServlet(){
		super();
		this.sysCommonService = Global.springContext.getBean(SysCommonService.class);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String type = CommonUtil.getParameterEmpty(req, "type");
		if("1".equals(type)){
			//富文本剪辑器图片上传
			Uploader up = new Uploader(req);
			//up.setSavePath("upload1");
			String[] fileType = {".gif" , ".png" , ".jpg" , ".jpeg" , ".bmp"};
			up.setAllowFiles(fileType);
			up.setMaxSize(10*1024); //单位KB
			try {
				up.upload();
			} catch (Exception e) {
				e.printStackTrace();
			}
			sysCommonService.saveUploadFile(up.getOriginalName(), "-1", up.getUrl());
			String str = "{'original':'"+up.getOriginalName()+"','fileType':'"+up.getType()+"','url':'"+up.getUrl()+"','state':'"+up.getState()+"','title':'"+up.getTitle()+"'}";
			resp.getWriter().print(str);
			return ;
		}else if("2".equals(type)){
			//富文本剪辑器文件上传
		    Uploader up = new Uploader(req);
		    //up.setSavePath("upload1"); //保存路径
		    String[] fileType = {"*.*"};  //允许的文件类型
		    up.setAllowFiles(fileType);
		    up.setMaxSize(10*1024);        //允许的文件最大尺寸，单位KB
			try {
				up.upload();
			} catch (Exception e) {
				e.printStackTrace();
			}
			String fileId = sysCommonService.saveUploadFile(up.getOriginalName(), "-1", up.getUrl());
			String url = "/common/download.do?id=" + fileId;//换成下载链接
		    resp.getWriter().print("{'original':'"+up.getOriginalName()+"','fileType':'"+up.getType()+"','url':'"+url+"','state':'"+up.getState()+"'}");
		    return ;
		}else if("3".equals(type)){
			List<UploadFile> list = sysCommonService.getLatest50Pics();
			String imgStr ="";
			for(UploadFile uf : list){
				imgStr += uf.getPath() + "ue_separate_ue";
			}
			if(imgStr!=""){
		        imgStr = imgStr.substring(0,imgStr.lastIndexOf("ue_separate_ue")).replace(File.separator, "/").trim();
		    }
			resp.getWriter().print(imgStr);
			return ;
		}
		//富文本剪辑器图片上传
		Uploader up = new Uploader(req);
		//up.setSavePath("upload");
		String[] fileType = {"*.*"};
		up.setAllowFiles(fileType);
		up.setMaxSize(10*1024); //单位KB
		try {
			up.upload();
		} catch (Exception e) {
			e.printStackTrace();
		}
		String id = sysCommonService.saveUploadFile(up.getOriginalName(), "0", up.getUrl());
		resp.getWriter().print("{fileId:"+id+",'original':'"+up.getOriginalName()+"',url:'"+up.getUrl()+"'}");
		return ;
	}
	

	private List<File> getFiles(String realpath, List<File> files) {
		File realFile = new File(realpath);
		if (realFile.isDirectory()) {
			File[] subfiles = realFile.listFiles();
			for (File file : subfiles) {
				if (file.isDirectory()) {
					getFiles(file.getAbsolutePath(), files);
				} else {
					if (!getFileType(file.getName()).equals("")) {
						files.add(file);
					}
				}
			}
		}
		return files;
	}

	private String getRealPath(HttpServletRequest request, String path) {
		ServletContext application = request.getSession().getServletContext();
		String str = application.getRealPath(request.getServletPath());
		return new File(str).getParent();
	}

	private String getFileType(String fileName) {
		String[] fileType = { ".gif", ".png", ".jpg", ".jpeg", ".bmp" };
		Iterator<String> type = Arrays.asList(fileType).iterator();
		while (type.hasNext()) {
			String t = type.next();
			if (fileName.toLowerCase().endsWith(t)) {
				return t;
			}
		}
		return "";
	}
}
