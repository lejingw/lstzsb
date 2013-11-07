package com.totyu.apps.dao.edu.stu.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.totyu.apps.common.dao.impl.BaseDaoImpl;
import com.totyu.apps.dao.edu.stu.RewardPunishDao;
import com.totyu.apps.model.edu.stu.RewardPunish;

@Repository
public class RewardPunishDaoImpl extends BaseDaoImpl<RewardPunish> implements RewardPunishDao {

	@Override
	public List<RewardPunish> listRewardByStu(int stuId) {
		String hql = "select rp from RewardPunish rp where rp.student.id=? and isReward=1";
		return list(hql, stuId);
	}

	@Override
	public List<RewardPunish> listPunishByStu(int stuId) {
		String hql = "select rp from RewardPunish rp where rp.student.id=? and isReward=0";
		return list(hql, stuId);
	}

}
