package com.jatools.web.view.common;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.jatools.common.CommonUtil;
import com.jatools.manager.common.CommonManager;
import com.jatools.vo.basic.Org;
import com.jatools.web.cache.OrgCache;
import com.jatools.web.form.common.SelectorForm;
import com.jatools.web.view.BaseMultiActionController;

public class SelectOrgController extends BaseMultiActionController{

        private CommonManager commonManager;
        
        public void setCommonManager(CommonManager commonManager) {
                this.commonManager = commonManager;
        }
        
        @Override
        public ModelAndView doPerform(HttpServletRequest req, HttpServletResponse res) {
                return null;
        }
        /**
         * 获取组织数据
         */
        public ModelAndView getOrgTree(HttpServletRequest req, HttpServletResponse res) {
                String multiFlag = CommonUtil.getParameterEmpty(req, "multiFlag");
                String selectedValues = CommonUtil.getParameterEmpty(req, "selectedValues");
                Map<String, Org> dataMap = OrgCache.getInstance().getOrgTree();
                SelectorForm form = new SelectorForm("true".equals(multiFlag), selectedValues);
                form.setDataMap(dataMap);
                return new ModelAndView("common/SelectOrg", "form", form);
        }
        
}