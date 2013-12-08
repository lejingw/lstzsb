package com.totyu.dwr.jiancha.other;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.directwebremoting.io.FileTransfer;
import org.directwebremoting.io.OutputStreamLoader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.totyu.common.CommonUtil;
import com.totyu.service.common.SysCommonService;

@Controller
@RemoteProxy(name="FileUpDownloadDwr")
public class FileUpDownloadDwr {
	@Autowired
	private SysCommonService sysCommonService;
	
	@RemoteMethod
	public String uploadFiles(FileTransfer ft, HttpServletRequest req) {
		try {
			List<FileTransfer> ftList = new ArrayList<FileTransfer>();
			ftList.add(ft);
			sysCommonService.uploadFile("TB", "1", ftList, CommonUtil.getSessionUserId(req));
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return "上传失败";
		}
	}

	@RemoteMethod
    public FileTransfer downloadPdfFile() throws Exception {
//		//==file:/Users/wanglj/workspaces/lstzsb_workspace/tzsb/src/main/webapp/WEB-INF/classes/
////		System.out.println("=="+this.getClass().getResource("/"));
//		//==/Users/wanglj/workspaces/lstzsb_workspace/tzsb/src/main/webapp/WEB-INF/classes/
////		System.out.println("=="+this.getClass().getResource("/").getPath());
//		
//		//==/Users/wanglj/java/apache-tomcat-6.0.37/lsztsb/aaa.jpg
////		File file = new File("lsztsb/aaa.jpg");
//		File file = new File("/Users/wanglj/workspaces/lstzsb_workspace/tzsb/src/main/webapp/aaa.jpg");
//		System.out.println("=="+file.getAbsolutePath());
//        InputStream is = null;
////        try {
//			is = new FileInputStream(file);
//			ByteArrayOutputStream baos = new ByteArrayOutputStream();
//			byte[] buff = new byte[1024];
//			int len = 0;
//			while((len = is.read(buff))>0){
//				baos.write(buff, 0, len);
//			}
//			//application/octet-stream
//			return new FileTransfer("aaa22222.jpg", "image/jpeg", baos.toByteArray());
////		} finally {
////			if(null != is){
////				is.close();
////			}
////		}
			
		return new FileTransfer("aaa22222.jpg", "image/jpeg", new OutputStreamLoader(){
			private OutputStream outStream = null;

			@Override
			public void load(OutputStream out) throws IOException {
				File file = new File("/Users/wanglj/workspaces/lstzsb_workspace/tzsb/src/main/webapp/aaa.jpg");
				outStream = new FileOutputStream(file);
				out = outStream;
			}

			@Override
			public void close() throws IOException {
				if(null != outStream){
					outStream.close();
				}
			}});
    }
}
