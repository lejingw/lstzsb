package com.totyu.controller.common;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.common.CommonUtil;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.basic.Org;
import com.totyu.web.cache.OrgCache;

@Controller
@RequestMapping("/common/select")
public class SelectController{
		@Autowired
        private SysCommonService sysCommonService;
        
        @RequestMapping("/org")
        public String org(Model model, HttpServletRequest req, HttpServletResponse res) {
            String multiFlag = CommonUtil.getParameterEmpty(req, "multiFlag");
            String selectedValues = CommonUtil.getParameterEmpty(req, "selectedValues");
            Map<String, Org> dataMap = OrgCache.getInstance().getOrgTree();
            model.addAttribute("multiFlag", "true".equals(multiFlag));
            model.addAttribute("dataMap", dataMap);
            model.addAttribute("selectedValues", selectedValues);
            return "common/SelectOrg";
        }
        
}