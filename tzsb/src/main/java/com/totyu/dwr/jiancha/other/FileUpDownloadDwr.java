package com.totyu.dwr.jiancha.other;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.directwebremoting.io.FileTransfer;
import org.directwebremoting.io.OutputStreamLoader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.totyu.common.CommonUtil;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.sys.UploadFile;

@Controller
@RemoteProxy(name="FileUpDownloadDwr")
public class FileUpDownloadDwr {
	@Autowired
	private SysCommonService sysCommonService;
	
	@RemoteMethod
	public String uploadFiles(FileTransfer ft, List<String> saveIdList, List<String> deleteIdList, HttpServletRequest req) {
		try {
			List<FileTransfer> ftList = new ArrayList<FileTransfer>();
			ftList.add(ft);
			sysCommonService.uploadFile("TB", "1", ftList, saveIdList, deleteIdList, CommonUtil.getSessionUserId(req));
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return "上传失败";
		}
	}
	
}
