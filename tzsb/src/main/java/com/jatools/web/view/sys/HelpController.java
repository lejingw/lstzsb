package com.jatools.web.view.sys;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jatools.web.form.sys.HelpForm;


@Controller
@RequestMapping("/sys/help")
public class HelpController {

    public ModelAndView doPerform(HttpServletRequest req, HttpServletResponse res) {
    	
    	HelpForm helpForm = new HelpForm();
        
        return new ModelAndView("help", "helpForm", helpForm);
    }
    
    public ModelAndView doViewContent(HttpServletRequest req, HttpServletResponse res) {
    	
    	HelpForm helpForm = new HelpForm();
        
        return new ModelAndView("helpContent", "helpForm", helpForm);
    }
    
}
