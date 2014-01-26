package com.totyu.service.common.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totyu.common.Pager;
import com.totyu.dao.common.SysCommonDao;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.common.Dict;
import com.totyu.vo.common.Org;
import com.totyu.vo.common.Parameter;
import com.totyu.vo.common.User;
import com.totyu.vo.sys.UploadFile;
import com.totyu.web.cache.OrgCache;

@Service("sysCommonService")
public class SysCommonServiceImpl implements SysCommonService {
	@Autowired
	private SysCommonDao sysCommonDao;
	/**
	 * 获取单据编号
	public synchronized String getBillno(String billCode){
		return sysCommonDao.getBillno(billCode);
	}
	 */
	/**
	 * 获取所有用户信息
	 * @return
	 */
	public List<User> getAllUser(){
		return sysCommonDao.getAllUser();
	}
	/**
	 * 获取所有数据字典项
	 * @return
	 */
	public List<Dict> getAllDictItem(){
		return sysCommonDao.getAllDictItem();
	}
	/**
	 * 获取所有系统参数配置
	 */
	public List<Parameter> getAllParameters(){
		return sysCommonDao.getAllParameters();
	}
	/**
	 * 获取所有组织数据
	 */
	public List<Org> getAllOrg(){
		return sysCommonDao.getAllOrg();
	}
	/**
	 * 保存上传文件
	 */
	public String saveUploadFile(String filename, String order, String filepath){
		return sysCommonDao.saveUploadFile(filename, order, filepath);
	}
	/**
	 * 获取单据上传文件列表
	 */
	public List<UploadFile> getUploadFileList(String billCode, String billId){
		return sysCommonDao.getUploadFileList(billCode, billId);
	}
	/**
	 * 获取最新的50张图片
	 */
	public List<UploadFile> getLatest50Pics(){
		return sysCommonDao.getLatest50Pics();
	}
	/**
	 * 根据 id 获取上传文件信息
	 */
	public UploadFile getUploadFile(String id){
		return sysCommonDao.getUploadFile(id);
	}
	/**
	 * web service调用日志
	 */
	public String writeWebServiceLog(boolean inOutFlag, String respId, String msg){
		//t_xt_webservice_log
		//id, inoutFlag, partIndex, msg, req_date, respId
		return sysCommonDao.writeWebServiceLog(inOutFlag, respId, msg);
	}
	/**
	 * 获取单位分页信息
	 */
	public Pager getOrgPagerData(String orgType, String start, String limit, String queryName){
		Map<String, Org> map = OrgCache.getInstance().getOrgData(Integer.parseInt(orgType));
		List<Org> list = new ArrayList<Org>();
		int count = 0;
		Iterator<String> iter = map.keySet().iterator();
		int startInt = Integer.parseInt(start);
		int limitInt = Integer.parseInt(limit);
		while(iter.hasNext()){
			String key = iter.next();
			if(null != queryName && queryName.trim().length()>0 && map.get(key).getOrgName().indexOf(queryName.trim())<0)
				continue;
			count ++;
			if(count <= startInt)
				continue;
			if(count <= (startInt+limitInt)){				
				list.add(map.get(key));
			}
		}
		Pager<Org> pager = new Pager<Org>();
		pager.setStart(startInt);
		pager.setLimit(limitInt);
		pager.setTotalCount(count);
		pager.setPageData(list);
		return pager;
	}
}
