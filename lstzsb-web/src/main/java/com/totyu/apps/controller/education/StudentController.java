package com.totyu.apps.controller.education;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.apps.common.model.Pager;
import com.totyu.apps.model.Student;
import com.totyu.apps.service.StudentService;

@Controller
@RequestMapping("/edu/stu")
public class StudentController {
	
	@Inject
	private StudentService studentService;
	

	@RequestMapping("/list")
	public String index(Model model) {
		model.addAttribute("username", "张三");
		model.addAttribute("stuList", getStudentPageList());
		return "/edu/stu/list";
	}
	
	private Pager<Student> getStudentPageList(){
		System.out.println(studentService);
		Pager<Student> pager = studentService.getStudentPageData();
		System.out.println(pager.getDatas());
		System.out.println(pager.getDatas().size());
		return pager;
	}
}
