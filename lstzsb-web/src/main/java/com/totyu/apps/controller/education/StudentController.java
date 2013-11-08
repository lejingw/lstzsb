package com.totyu.apps.controller.education;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.totyu.apps.model.edu.stu.RewardPunish;
import com.totyu.apps.model.edu.stu.Student;
import com.totyu.apps.service.edu.stu.RewardPunishService;
import com.totyu.apps.service.edu.stu.StudentService;

@Controller
@RequestMapping("/edu/stu")
public class StudentController {
	
	@Inject
	private StudentService studentService;
	@Inject
	private RewardPunishService rewardPunishService;
	

	@RequestMapping("/list")
	public String index(Model model) {
		model.addAttribute("pager", studentService.getStudentPageData());
		return "/edu/stu/listStudent";
	}
	
	@RequestMapping("/rp/{stuId}")
	public String rewardPunish(@PathVariable int stuId, Model model){
		model.addAttribute("rewards", rewardPunishService.listRewardByStu(stuId));
		model.addAttribute("punishs", rewardPunishService.listPunishByStu(stuId));
		model.addAttribute("stu", studentService.load(stuId));
		return "edu/stu/rewardPunish";
	}
	
	@RequestMapping(value="/update/{stuId}", method=RequestMethod.GET)
	public String update(@PathVariable int stuId, Model model){
		model.addAttribute("stu", studentService.load(stuId));
		return "edu/stu/update";
	}
	@RequestMapping(value="/update/{stuId}", method=RequestMethod.POST)
	public String update(@PathVariable int stuId, Student stu){
		Student st = studentService.load(stuId);
		st.setName(stu.getName());
		st.setSex(stu.getSex());
		st.setStatus(stu.getStatus());
		st.setXh(stu.getXh());
		studentService.update(st);
		return "redirect:/edu/stu/list.do";
	}
	
	@RequestMapping(value="/addRewardPunish/{stuId}", method=RequestMethod.GET)
	public String addRewardPunish(@PathVariable int stuId, int isReward, Model model){
		Student stu = studentService.load(stuId);
		model.addAttribute("stu", stu);
		model.addAttribute("type", isReward);
		model.addAttribute("rewardPunish", new RewardPunish());
		return "edu/stu/addRewardPunish";
	}
	@RequestMapping(value="/addRewardPunish/{stuId}", method=RequestMethod.POST)
	public String addRewardPunish(@PathVariable int stuId, int isReward, RewardPunish rewardPunish){
//		rewardPunish.setIsReward(isReward);
		rewardPunishService.add(rewardPunish, stuId);
		return "redirect:/edu/stu/list.do";
	}
	
	@RequestMapping("/listRewardPunish/{isReward}")
	public String listRewardPunish(@PathVariable int isReward, Model model){
		model.addAttribute("isReward", isReward);
		model.addAttribute("rewardPunishPage", rewardPunishService.findRewardPunish(isReward));
		return "edu/stu/listRewardPunish";
	}
}
