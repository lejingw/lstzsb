package com.totyu.apps.dao.edu.stu;

import java.util.List;

import com.totyu.apps.common.dao.BaseDao;
import com.totyu.apps.model.edu.stu.RewardPunish;

public interface RewardPunishDao extends BaseDao<RewardPunish> {

	List<RewardPunish> listRewardByStu(int stuId);

	List<RewardPunish> listPunishByStu(int stuId);

}
