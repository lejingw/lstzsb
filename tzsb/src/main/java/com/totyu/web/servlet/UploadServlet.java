package com.totyu.web.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.FileCleanerCleanup;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileCleaningTracker;
import org.apache.log4j.Logger;

import com.totyu.common.Global;
import com.totyu.service.common.SysCommonService;

public class UploadServlet extends HttpServlet {
	private static Logger log = Logger.getLogger(UploadServlet.class);
	private String tempPath = null;//临时文件路径
	private String fileRelativePath = null;//文件相对路径
	private String fileAbsolutePath = null;//文件绝对路径
	private DateFormat dataFmt = new SimpleDateFormat("yyyy/MM/dd");
	private SysCommonService sysCommonService;
	
	public UploadServlet(){
		super();
		this.sysCommonService = Global.springContext.getBean(SysCommonService.class);
		tempPath = Global.getPicUploadPath() + "temp/";
		File tempPathDir = new File(tempPath);
		if(!tempPathDir.exists()){
			tempPathDir.mkdirs();
		}
		fileRelativePath = dataFmt.format(new Date()) + "/";
		fileAbsolutePath = Global.getPicUploadPath() + fileRelativePath;
		File filePathDir = new File(fileAbsolutePath);
		if(!filePathDir.exists()){
			filePathDir.mkdirs();
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		boolean isMultipart = ServletFileUpload.isMultipartContent(req);
		if (!isMultipart) {
			if(log.isDebugEnabled()){
				log.debug(">> This wasn't a file upload request!");
			}
			return;
		}
		FileCleaningTracker tracker = FileCleanerCleanup.getFileCleaningTracker(getServletContext());
		File tmpDir = new File(tempPath);
		DiskFileItemFactory factory = new DiskFileItemFactory(DiskFileItemFactory.DEFAULT_SIZE_THRESHOLD, tmpDir);
		factory.setFileCleaningTracker(tracker);
		
		try {
			ServletFileUpload upload = new ServletFileUpload(factory);
			List<FileItem> items = upload.parseRequest(req);
			
			String sort = "0";
			String filename = null;
			String filepath = null;
			for (FileItem item : items) {
				if (!item.isFormField()) {
					String relativeFilename = System.currentTimeMillis() + "_" + item.getName();
					File savefile = new File(fileAbsolutePath + relativeFilename);
					item.write(savefile);
					
					filename = item.getName();
					filepath = fileRelativePath + relativeFilename;
				}else{
					if("sort".equals(item.getFieldName())){
						sort = item.getString();
					}
				}
			}
			PrintWriter out = resp.getWriter();
			if(null != filepath){
				String id = sysCommonService.saveUploadFile(filename, sort, filepath);
				out.print("{fileId:"+id+"}");
			}
			out.flush();
		} catch (Exception e) {
			throw new IOException(e.getMessage());
		}
	}
}
