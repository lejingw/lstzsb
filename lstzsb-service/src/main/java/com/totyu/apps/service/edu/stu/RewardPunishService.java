package com.totyu.apps.service.edu.stu;

import java.util.List;

import com.totyu.apps.common.model.Pager;
import com.totyu.apps.model.edu.stu.RewardPunish;

public interface RewardPunishService {

	List<RewardPunish> listRewardByStu(int stuId);

	List<RewardPunish> listPunishByStu(int stuId);

	void add(RewardPunish rewardPunish, int stuId);

	Pager<RewardPunish> findRewardPunish(int isReward);

}
