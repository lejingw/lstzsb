package com.jatools.manager.move;

import java.util.List;
import java.util.Map;

import com.jatools.common.Pager;
import com.jatools.vo.move.MoveBillHead;
import com.jatools.vo.move.MoveBillLine;

public interface MoveBillManager {

	/**
	 * 获取调拨单分页数据
	 * @param condition
	 * @return
	 */
	public Pager getMoveBillPageData(Map<String, String> condition, String orgId, String userid);

	/**
	 * 获取现有量表信息
	 * @param ornaCode
	 * @param ornaFlag
	 * @return
	 */
	public MoveBillLine getMaterActiveInfo(String ornaCode, String orgId);
	
	/**
	 * 检查饰品状态是否有效
	 * @param ornaCodeList
	 * @return
	 */
	public List<String> checkOrnaStatusAvail(List<String> ornaCodeList);
	/**
	 * 保存或修改调拨单
	 * @param moveHead
	 * @param newOrnaCodeList 添加的行记录
	 * @param deleteOrnaCodeList 删除的行记录
	 * @return
	 */
	public void saveMoveBill(MoveBillHead moveHead, List<String> newOrnaCodeList, List<String> deleteOrnaCodeList, String userid);
	/**
	 * 删除调拨单
	 * @param netIdList
	 */
	public void deleteMoveBill(List<String> headidList, String userid);
	
	public MoveBillHead getMoveBillHead(String headid);
	public List<MoveBillLine> getMoveBillLine(String headid);

//	public String getBillno(String string);
}
