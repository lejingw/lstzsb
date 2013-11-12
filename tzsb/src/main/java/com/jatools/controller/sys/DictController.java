package com.jatools.controller.sys;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jatools.common.CommonUtil;
import com.jatools.common.Pager;
import com.jatools.service.sys.DictService;
import com.jatools.vo.sys.DictEntry;
import com.jatools.vo.sys.DictItem;

@Controller
@RequestMapping("/sys/dict")
public class DictController {
	@Autowired
	private DictService dictService;
	
	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest req, HttpServletResponse res) {
		String entryType = CommonUtil.getParameterEmpty(req, "entryType");
		model.addAttribute("entryType", entryType);
		Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req, "entryType");
		if("1".equals(entryType)){//系统数据字典
			Pager pager = dictService.getDictEntryPageData(condition);
			model.addAttribute("pager", pager);
		}else if("2".equals(entryType)){//业务数据字典
			Pager pager = dictService.getDictEntryPageData(condition);
			model.addAttribute("pager", pager);
		}else{
			model.addAttribute("message", "参数不正确");
		}
		return "sys/dict_list";
	}

	@RequestMapping("/toAdd")
	public String toAdd(Model model, HttpServletRequest req, HttpServletResponse res) {
		String entryType = CommonUtil.getParameterEmpty(req, "entryType");
		model.addAttribute("entryType", entryType);
		if(!"1".equals(entryType) && !"2".equals(entryType)){//业务数据字典
			model.addAttribute("message", "参数不正确");
			return "sys/dict_list";
		}
		return "sys/dict_edit";
	}

	@RequestMapping("/toEdit")
	public String toEdit(Model model, HttpServletRequest req, HttpServletResponse res) {
		String entryType = CommonUtil.getParameterEmpty(req, "entryType");
		model.addAttribute("action", "update");
		model.addAttribute("entryType", entryType);
		if(!"1".equals(entryType) && !"2".equals(entryType)){//业务数据字典
			model.addAttribute("message", "参数不正确");
			return "sys/dict_list";
		}
		String entryCode = CommonUtil.getParameterEmpty(req, "entryCode");
		DictEntry entry = dictService.getDictEntry(entryCode);
		if(null == entry){
			model.addAttribute("message", "不能根据编码["+entryCode+"]获取数据字典");
			return "sys/dict_list";
		}
		model.addAttribute("entry", entry);
		
		List<DictItem> list = dictService.getDictItemByEntryCode(entryCode);
		model.addAttribute("list", list);
		return "sys/dict_edit";
	}
	
}
