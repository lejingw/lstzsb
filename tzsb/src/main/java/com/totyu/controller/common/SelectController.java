package com.totyu.controller.common;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.common.CommonUtil;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.common.Org;
import com.totyu.web.cache.OrgCache;

@Controller
@RequestMapping("/common/select")
public class SelectController{
		@Autowired
        private SysCommonService sysCommonService;
        /**
         * 选择组织机构
         * @param orgType 0企业单位 1监察单位 2乡镇部门 3行业主管部门
         * @return
         */
        @RequestMapping("/org")
        public String org(int orgType, Model model, HttpServletRequest req, HttpServletResponse res) {
        	model.addAttribute("orgType", orgType);
            model.addAttribute("multiFlag", "true".equals(CommonUtil.getParameterEmpty(req, "multiFlag")));
            model.addAttribute("selectedValues", CommonUtil.getParameterEmpty(req, "selectedValues"));
            model.addAttribute("selectedNames", CommonUtil.toUTF8(CommonUtil.getParameterEmpty(req, "selectedNames")));
            return "common/SelectOrg";
        }
        /**
         * 选择组织机构
         * @param orgType 0企业单位 1监察单位 2乡镇部门 3行业主管部门
         * @return
         */
        @RequestMapping("/orgTree")
        public String qiyeOrgTree(int orgType, Model model, HttpServletRequest req, HttpServletResponse res) {
        	model.addAttribute("multiFlag", "true".equals(CommonUtil.getParameterEmpty(req, "multiFlag")));
        	model.addAttribute("selectedValues", CommonUtil.getParameterEmpty(req, "selectedValues"));
        	Map<String, Org> dataMap = OrgCache.getInstance().getOrgData(orgType);
        	model.addAttribute("dataMap", dataMap);
        	return "common/SelectOrgTree";
        }
        /**
         * 选择组织机构
         * @param orgType 0企业单位 1监察单位 2乡镇部门 3行业主管部门
         * @return
         */
        @RequestMapping("/orgList")
        public String orgList(int orgType, Model model, HttpServletRequest req, HttpServletResponse res) {
        	String qorgName = CommonUtil.getParameterEmpty(req, "qorgName");
        	model.addAttribute("qorgName", qorgName);
        	model.addAttribute("multiFlag", "true".equals(CommonUtil.getParameterEmpty(req, "multiFlag")));
        	model.addAttribute("selectedValues", CommonUtil.getParameterEmpty(req, "selectedValues"));
        	List<Org> dataList = new ArrayList<Org>();
        	Map<String, Org> map = OrgCache.getInstance().getOrgData(orgType);
    		Iterator<String> iter = map.keySet().iterator();
    		while(iter.hasNext()){
    			String key = iter.next();
    			Org org = map.get(key);
				if(null != qorgName && qorgName.trim().length()>0 && org.getOrgName().indexOf(qorgName.trim())<0)
    				continue;
    			dataList.add(org);
    		}
        	model.addAttribute("dataList", dataList);
        	return "common/SelectOrgList";
        }
        
}