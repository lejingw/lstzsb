package com.totyu.apps.service.edu.stu.impl;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.ObjectNotFoundException;
import org.springframework.stereotype.Service;

import com.totyu.apps.dao.edu.stu.RewardPunishDao;
import com.totyu.apps.dao.edu.stu.StudentDao;
import com.totyu.apps.model.edu.stu.RewardPunish;
import com.totyu.apps.model.edu.stu.Student;
import com.totyu.apps.model.edu.stu.StudentException;
import com.totyu.apps.service.edu.stu.RewardPunishService;

@Service
public class RewardPunishServiceImpl implements RewardPunishService {
	@Inject
	private RewardPunishDao rewardPunishDao;

	@Inject
	private StudentDao studentDao;
	
	@Override
	public List<RewardPunish> listRewardByStu(int stuId) {
		return rewardPunishDao.listRewardByStu(stuId);
	}

	@Override
	public List<RewardPunish> listPunishByStu(int stuId) {
		return rewardPunishDao.listPunishByStu(stuId);
	}

	@Override
	public void add(RewardPunish rewardPunish, int stuId) {
		Student stu = studentDao.load(stuId);
		try{
			stu.getName();
		}catch(ObjectNotFoundException e){
			throw new StudentException("添加奖励或处罚的学生不存在");
		}
		rewardPunish.setStudent(stu);
		rewardPunishDao.add(rewardPunish);
	}

}
