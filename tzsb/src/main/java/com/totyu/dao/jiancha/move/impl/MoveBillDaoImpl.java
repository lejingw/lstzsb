package com.totyu.dao.jiancha.move.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.totyu.common.Pager;
import com.totyu.common.constant.DictConstant;
import com.totyu.dao.BaseDao;
import com.totyu.dao.jiancha.move.MoveBillDao;
import com.totyu.vo.jiancha.move.MoveBillHead;
import com.totyu.vo.jiancha.move.MoveBillLine;
import com.totyu.web.util.DateUtil;

@Repository
public class MoveBillDaoImpl extends BaseDao implements MoveBillDao {

	/**
	 * 获取调拨单分页数据
	 * @param condition
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public Pager getMoveBillPageData(Map<String, String> condition, String orgId, String userid){
		condition.put("orgId", orgId);
		condition.put("userId", userid);
		return executeQueryForPager("MoveBill.getMoveBillPageData", "MoveBill.getMoveBillTotalCount", condition);
	}
	/**
	 * 获取现有量表信息
	 * @param ornaCode
	 * @param ornaFlag
	 * @return
	 */
	public MoveBillLine getMaterActiveInfo(String ornaCode){
		return (MoveBillLine)executeQueryForObject("MoveBill.getMaterActiveInfo", ornaCode);
	}
	/**
	 * 检查饰品状态是否有效
	 * @param ornaCodeList
	 * @return
	 */
	public List<String> checkOrnaStatusAvail(List<String> ornaCodeList){
		String tmp = listToStr(ornaCodeList);
		return executeQueryForList("MoveBill.checkOrnaStatusAvail", tmp.substring(2));
	}
	/**
	 * 保存调拨单头
	 * @param moveHead
	 * @param userid
	 * @return
	 */
	public String saveMoveBillHead(MoveBillHead moveHead, String userid){
		moveHead.setCreateDate(DateUtil.getCurrentDate18());
		moveHead.setCreateId(userid);
		moveHead.setUpdateDate(DateUtil.getCurrentDate18());
		moveHead.setUpdateId(userid);
		return (String) executeInsert("MoveBill.saveMoveBillHead", moveHead);
	}
	
	private String listToStr(List<String> ornaCodeList) {
		String tmp = "$";
		for(String str :ornaCodeList){
			tmp += ",'" + str + "'";
		}
		if("$".equals(tmp)){
			return null;
		}
		return tmp;
	}
	/**
	 * 修改调拨单头
	 * @param moveHead
	 * @param userid
	 * @return
	 */
	public void updateMoveBillHead(MoveBillHead moveHead, String userid){
		moveHead.setUpdateDate(DateUtil.getCurrentDate18());
		moveHead.setUpdateId(userid);
		executeUpdate("MoveBill.updateMoveBillHead", moveHead);
	}
	/**
	 * 保存调拨单行
	 * @param newOrnaCodeList
	 * @param headid
	 * @param userid
	 */
	public void saveMoveBillLine(List<String> newOrnaCodeList, String headid, String userid){
		List<Map<String, String>> parameterList = new ArrayList<Map<String,String>>();
		for(String ornaCode : newOrnaCodeList){
			Map<String, String> map = new HashMap<String, String>();
			map.put("ornaCode", ornaCode);
			map.put("headid", headid);
			map.put("userid", userid);
			map.put("status", DictConstant.BILL_STATUS_SAVE);
			map.put("date", DateUtil.getCurrentDate18());
			
			parameterList.add(map);
		}
		executeBatchInsert("MoveBill.saveMoveBillLine", parameterList);
	}
	/**
	 * 删除调拨单行
	 * @param newOrnaCodeList
	 * @param headid
	 * @param userid
	 */
	public void deleteMoveBillLineByOrnaCode(List<String> deleteOrnaCodeList, String headid, String userid){
		List<Map<String, String>> parameterList = new ArrayList<Map<String,String>>();
		for(String ornaCode : deleteOrnaCodeList){
			Map<String, String> map = new HashMap<String, String>();
			map.put("ornaCode", ornaCode);
			map.put("headid", headid);
			parameterList.add(map);
		}
		executeBatchDelete("MoveBill.deleteMoveBillLineByOrnaCode", parameterList);
	}
	/**
	 * 更新调拨单头合计数据
	 * @param headid
	 * @param userid
	 */
	public void updateMoveBillSumNum(String headid, String userid){
		Map<String, String> condition = new HashMap<String, String>();
		condition.put("headid", headid);
		condition.put("userid", userid);
		condition.put("date", DateUtil.getCurrentDate18());
		executeUpdate("MoveBill.updateMoveBillSumNum", condition);
	}
	
	
	
	/**
	 * 删除调拨单行
	 * @param headid
	 */
	public void deleteMoveBillLine(String headid){
		executeUpdate("MoveBill.deleteMoveBillLine", headid);
	}
	/**
	 * 删除调拨单头
	 * @param headid
	 */
	public void deleteMoveBillHead(String headid){
		executeUpdate("MoveBill.deleteMoveBillHead", headid);
	}
	/**
	 * 获取调拨单行
	 * @param headid
	 * @return
	 */
	public List<MoveBillLine> getMoveBillLine(String headid){
		Map<String, String> condition = new HashMap<String, String>();
		condition.put("headid", headid);
		return executeQueryForList("MoveBill.getMoveBillLine", condition);
	}
	/**
	 * 获取调拨单头
	 * @param headid
	 * @return
	 */
	public MoveBillHead getMoveBillHead(String headid){
		return (MoveBillHead) executeQueryForObject("MoveBill.getMoveBillHead", headid);
	}
}