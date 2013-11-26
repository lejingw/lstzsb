package com.totyu.dao.jiancha.move;

import java.util.List;
import java.util.Map;

import com.totyu.common.Pager;
import com.totyu.vo.jiancha.move.MoveBillHead;
import com.totyu.vo.jiancha.move.MoveBillLine;

public interface MoveBillDao {

	/**
	 * 获取调拨单分页数据
	 * @param condition
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public Pager getMoveBillPageData(Map<String, String> condition, String orgId, String userid);

	/**
	 * 获取现有量表信息
	 * @param ornaCode
	 * @param ornaFlag
	 * @return
	 */
	public MoveBillLine getMaterActiveInfo(String ornaCode);
	
	/**
	 * 检查饰品状态是否有效
	 * @param ornaCodeList
	 * @return
	 */
	public List<String> checkOrnaStatusAvail(List<String> ornaCodeList);
	/**
	 * 保存调拨单头
	 * @param moveHead
	 * @param userid
	 * @return
	 */
	public String saveMoveBillHead(MoveBillHead moveHead, String userid);
	/**
	 * 修改调拨单头
	 * @param moveHead
	 * @param userid
	 * @return
	 */
	public void updateMoveBillHead(MoveBillHead moveHead, String userid);
	/**
	 * 保存调拨单行
	 * @param newOrnaCodeList
	 * @param headid
	 * @param userid
	 */
	public void saveMoveBillLine(List<String> newOrnaCodeList, String headid, String userid);
	/**
	 * 删除调拨单行
	 * @param newOrnaCodeList
	 * @param headid
	 * @param userid
	 */
	public void deleteMoveBillLineByOrnaCode(List<String> deleteOrnaCodeList, String headid, String userid);
	/**
	 * 更新调拨单头合计数据
	 * @param headid
	 * @param userid
	 */
	public void updateMoveBillSumNum(String headid, String userid);
	/**
	 * 删除调拨单行
	 * @param headid
	 */
	public void deleteMoveBillLine(String headid);
	/**
	 * 删除调拨单头
	 * @param headid
	 */
	public void deleteMoveBillHead(String headid);
	/**
	 * 获取调拨单行
	 * @param headid
	 * @return
	 */
	public List<MoveBillLine> getMoveBillLine(String headid);
	/**
	 * 获取调拨单头
	 * @param headid
	 * @return
	 */
	public MoveBillHead getMoveBillHead(String headid);

}
