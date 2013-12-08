package com.totyu.dwr.sys;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.totyu.common.CommonUtil;
import com.totyu.service.sys.DictService;
import com.totyu.vo.sys.Dict;
import com.totyu.vo.sys.DictEntry;
import com.totyu.vo.sys.DictItem;
import com.totyu.vo.util.SelectorOption;
import com.totyu.web.cache.DictCache;

@Controller
@RemoteProxy(name="DictDwr")
public class DictDwr {
	
	private static Logger logger = Logger.getLogger(DictDwr.class);
	
	@Autowired
	private DictService dictService;
	
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
	 * 删除数据字典
	 * @param entryCode
	 * @param req
	 * @return
	 */
	@RemoteMethod
	public String deleteDictEntry(String entryCode, HttpServletRequest req){
		try {
			String userid = CommonUtil.getSessionUserId(req);
			dictService.deleteDictEntry(entryCode, userid);
			DictCache.getInstance().refresh();
		} catch (Exception e) {
			logger.error(e);
			return "删除数据字典出错";
		}
		return null;
	}
	/**
	 * 修改数据字典
	 * @param entry
	 * @param list
	 * @param req
	 * @return
	 */
	@RemoteMethod
	public String updateDictEntry(DictEntry entry, List<DictItem> list, HttpServletRequest req){
		String userid = CommonUtil.getSessionUserId(req);
		dictService.updateDictEntry(entry, list, userid);
		DictCache.getInstance().refresh();
		return null;
	}
	/**
	 * 保存数据字典
	 * @param entry
	 * @param list
	 * @param req
	 * @return
	 */
	@RemoteMethod
	public String saveDictEntry(DictEntry entry, List<DictItem> list, HttpServletRequest req){
		String userid = CommonUtil.getSessionUserId(req);
		dictService.saveDictEntry(entry, list, userid);
		DictCache.getInstance().refresh();
		return null;
	}
}
