package com.totyu.service.common.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import org.directwebremoting.io.FileTransfer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totyu.dao.common.SysCommonDao;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.basic.Org;
import com.totyu.vo.sys.Parameter;
import com.totyu.vo.sys.UploadFile;

@Service("sysCommonService")
public class SysCommonServiceImpl implements SysCommonService {
	@Autowired
	private SysCommonDao sysCommonDao;

	/**
	 * 获取单据编号
	 */
	public synchronized String getBillno(String billCode) {
		return sysCommonDao.getBillno(billCode);
	}

	/**
	 * 获取所有系统参数配置
	 */
	public List<Parameter> getAllParameters() {
		return sysCommonDao.getAllParameters();
	}

	/**
	 * 根据组织类型获取组织树
	 * 
	 * @return
	 */
	public List<Org> getOrgTree() {
		return sysCommonDao.getOrgTree();
	}

	public static final String ABSOLUTE_FILE_UPLOAD_PATH = "/Users/wanglj/Desktop/";
	/**
	 * 文件上传列表
	 * 
	 * @param ftArr
	 * @throws IOException
	 */
	public void uploadFile(String billCode, String headid, List<FileTransfer> ftList, String userid){
		InputStream is = null;
		OutputStream os = null;
		try {
			int len = 0;
			byte[] buff = new byte[1024];
			int sort = 0;
			List<UploadFile> uploadFileList = new ArrayList<UploadFile>();
			for (FileTransfer ft : ftList) {
				is = ft.getInputStream();
				String relativeFilename = getRelativeFilename(ft.getFilename());
				File file = new File(ABSOLUTE_FILE_UPLOAD_PATH + relativeFilename);
				os = new FileOutputStream(file);
				while ((len = is.read(buff)) > 0) {
					os.write(buff, 0, len);
				}
				os.flush();
				os.close();
				is.close();
				os = null;
				is = null;
				
				UploadFile data = new UploadFile();
				data.setLaiyuan(billCode);
				data.setLyid(headid);
				data.setShunxu(""+sort++);
				data.setMingcheng(ft.getFilename());
				data.setPath(relativeFilename);
				data.setCreateId(userid);
				
				uploadFileList.add(data);
			}
			sysCommonDao.saveUploadFile(uploadFileList);
		} catch (Exception e) {
			throw new RuntimeException("保存文件出错");
		}finally{
			try{
				if(null != os){
					os.close();
					os = null;
				}
				if(null != is){
					is.close();
					is = null;
				}
			}catch(Exception e){
				throw new RuntimeException("保存文件出错");
			}
		}
	}
	
	private String getRelativeFilename(String fileName) {
		return System.currentTimeMillis() + "_" + fileName;
	}
	

	public List<UploadFile> getUploadFileList(String billCode, String headid){
		return null;
	}
	/**
	 * 根据 id 获取上传文件信息
	 * @param id
	 * @return
	 */
	public UploadFile getUploadFile(String id){
		return sysCommonDao.getUploadFile(id);
	}
}
