package com.totyu.dwr.common;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.totyu.common.CommonUtil;
import com.totyu.common.Pager;
import com.totyu.common.excel.ExcelUtil;
import com.totyu.common.exception.TzsbException;
import com.totyu.service.common.ExcelUtilService;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.common.Dict;
import com.totyu.vo.common.Org;
import com.totyu.vo.qiye.jbxx.Dwxx;
import com.totyu.vo.sys.UploadFile;
import com.totyu.vo.common.SelectorOption;
import com.totyu.web.cache.DictCache;
import com.totyu.web.cache.ParameterCache;

@Controller
@RemoteProxy(name="SysCommonDwr")
public class SysCommonDwr {
	@Autowired
	private SysCommonService sysCommonService;
	@Autowired
	private ExcelUtilService excelUtilService;
	
	/**
	 * 获取系统参数配置值
	 * @param name
	 * @return
	 */
	@RemoteMethod
	public String getParameterValue(String name){
		return ParameterCache.getInstance().getValue(name);
	}
	/**
	 * 获取单据上传文件
	 */
	@RemoteMethod
	public List<UploadFile> getUploadFileList(String billCode, String headid){
		List<UploadFile> list = sysCommonService.getUploadFileList(billCode, headid);
		return list;
	}
	@RemoteMethod
	public String saveUploadExcelData(String fileId, HttpServletRequest req){
		try {
			UploadFile uploadFile = sysCommonService.getUploadFile(fileId);
			ExcelUtil excelUtil = new ExcelUtil(excelUtilService);
			String seqId = excelUtil.saveExcelData(CommonUtil.getRealPath(req) + uploadFile.getPath());
			return seqId;
		} catch (Exception e) {
			return null;
		}
	}
	/**
	 * 根据数据字典名称获取数据字典项
	 */
	@RemoteMethod
	public List<SelectorOption> getDictsForSlt(String name){
		List<Dict> dictList = DictCache.getInstance().getDicts(name);
		if(null == dictList || dictList.size()<1)
			return null;
		List<SelectorOption> sltList = new ArrayList<SelectorOption>();
		for(Dict dict : dictList){
			sltList.add(new SelectorOption(dict.getItemKey(), dict.getItemValue()));
		}
		return sltList;
	}
	/**
	 * 适用于树形结构的数据字典
	 * 根据数据字典名称及父节点key
	 * 获取数据字典项
	 */
	@RemoteMethod
	public List<SelectorOption> getDictsForSlt2(String name, String parentKey){
		List<Dict> dictList = DictCache.getInstance().getDicts(name);
		if(null == dictList || dictList.size()<1)
			return null;
		List<SelectorOption> sltList = new ArrayList<SelectorOption>();
		for(Dict dict : dictList){
			if(null != parentKey && !"".equals(parentKey.trim())){
				if(!dict.getParentKey().equals(parentKey))
					continue;
			}else{
				if(null != dict.getParentKey() && !"".equals(dict.getParentKey()))
					continue;
			}
			sltList.add(new SelectorOption(dict.getItemKey(), dict.getItemValue()));
		}
		return sltList;
	}
	/**
	 * 获取单位信息
	 */
	@RemoteMethod
	public Dwxx getDwxxById(String dwid){
		return sysCommonService.getDwxxById(dwid);
	}

	/**
	 * 获取单位分页信息
	 */
	@RemoteMethod
	public Pager<Org> getOrgPagerData(String orgType, String start, String limit, String queryName){
		Pager pager = sysCommonService.getOrgPagerData(orgType, start, limit, queryName);
		return pager;
	}
	
	/**
	 * 获取设备种类下拉列表数据
	 * 
	 * @return 设备种类一览数据
	 */
	@RemoteMethod
	public List<SelectorOption> getSbzl() {
		try{
			return sysCommonService.getSbzl();
		} catch(Exception e){
			throw new TzsbException(e.getMessage());
		}
	}
	
	/**
	 * 根据设备类别获取设备品种options
	 * 
	 * @param sblb:设备类别
	 * @param dmjb:代码级别
	 * HtmlUtil.printOptions(
	 * @return 设配品种options
	 */
	@RemoteMethod
	public List<SelectorOption> getSbpz(String daima, String dmjb) {
		try{
			return sysCommonService.getSblb(daima, dmjb);
		} catch(Exception e){
			throw new TzsbException(e.getMessage());
		}
	}
}