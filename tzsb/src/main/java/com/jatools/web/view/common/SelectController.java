package com.jatools.web.view.common;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jatools.common.CommonUtil;
import com.jatools.manager.common.SysCommonManager;
import com.jatools.vo.basic.Org;
import com.jatools.web.cache.OrgCache;
import com.jatools.web.form.common.SelectorForm;

@Controller
@RequestMapping("/common/select")
public class SelectController{
		@Autowired
        private SysCommonManager sysCommonManager;
        
        @RequestMapping("/org")
        public String org(HttpServletRequest req, Model model, HttpServletResponse res) {
            String multiFlag = CommonUtil.getParameterEmpty(req, "multiFlag");
            String selectedValues = CommonUtil.getParameterEmpty(req, "selectedValues");
            Map<String, Org> dataMap = OrgCache.getInstance().getOrgTree();
            SelectorForm form = new SelectorForm("true".equals(multiFlag), selectedValues);
            form.setDataMap(dataMap);
            model.addAttribute("form", form);
            return "common/SelectOrg";
        }
        
}