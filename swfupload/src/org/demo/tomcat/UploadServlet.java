package org.demo.tomcat;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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

/**
 * 
 * @author  
 * @date    2010-12-16
 * @file    org.demo.tomcat.UploadServlet.java
 */
public class UploadServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		boolean isMultipart = ServletFileUpload.isMultipartContent(req);
		if (!isMultipart){
			System.out.println(">> This wasn't a file upload request!");
			return;
		}
		
		PrintWriter out = resp.getWriter();
		
		// create factory and file cleanup tracker
		FileCleaningTracker tracker = FileCleanerCleanup.getFileCleaningTracker(getServletContext());
		File tmpDir = new File(getBaseDir() + "/upload/temp");
		DiskFileItemFactory factory = new DiskFileItemFactory(
				DiskFileItemFactory.DEFAULT_SIZE_THRESHOLD,
				tmpDir);
		factory.setFileCleaningTracker(tracker);
		
		// save upload file to disk
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			List<FileItem> items = upload.parseRequest(req);
			String fileName = null;
			File savefile = null;
			for (FileItem item : items){
				if (!item.isFormField()){
					// 确定是文件而不是一个普通的表单字段
					fileName = item.getName();
					savefile = new File(getBaseDir() + "/upload/" + fileName);
					item.write(savefile);
					System.out.println(">> [save] " + savefile.getAbsolutePath());

					// to client info
					out.print("fileId=" + savefile.getAbsolutePath());
					out.flush();
				}
			}
		} catch (Exception e) {
			System.out.println(">> " + e.getMessage());
			throw new IOException(e.getMessage());
		}
	}
	
	/**
	 * Return the WEB-INF directory.
	 * @return
	 */
	private String getBaseDir(){
		return this.getServletContext().getRealPath("/WEB-INF");
	}
}
