package com.totyu.controller.qiye.common;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.web.cache.OrgCache;

@Controller
@RequestMapping("/qiye/common/select")
public class QiyeSelectController {
	/**
	 * 选择单位信息
	 * @return
	 */
	@RequestMapping("dwxx")
	public String dwxx(boolean multiFlag, String selectedValues, Model model){
		model.addAttribute("multiFlag", multiFlag);
		model.addAttribute("selectedValues", selectedValues);
		model.addAttribute("dataMap", OrgCache.getInstance().getAllQiyeOrg());
		return "/qiye/common/selectDwxx";
	}
}
