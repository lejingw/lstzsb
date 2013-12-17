package com.totyu.dao.qiye.jbxx.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.totyu.common.Pager;
import com.totyu.dao.BaseDao;
import com.totyu.dao.qiye.jbxx.ScxkzglDao;
import com.totyu.vo.qiye.jbxx.Scxkzgl;

@Repository
public class ScxkzglDaoImpl extends BaseDao implements ScxkzglDao {
	/**
	 * 获取分页数据
	 */
	public Pager<Scxkzgl> getPageData(Map<String, String> condition, String orgid){
		condition.put("orgid", orgid);
		return executeQueryForPager("Scxkzgl.getPageData", "Scxkzgl.getPageCount", condition);
	}

	@Override
	public String createBill(Scxkzgl bill, String userid) {
		setCreate(bill, userid);
		return (String) executeInsert("Scxkzgl.createBill", bill);
	}

	@Override
	public void updateBill(Scxkzgl bill, String userid) {
		setUpdate(bill, userid);
		executeUpdate("Scxkzgl.updateBill", bill);
	}

	@Override
	public void deleteBill(String billid) {
		executeUpdate("Scxkzgl.deleteBill", billid);
	}

	/**
	 * 获取单据信息
	 */
	public Scxkzgl getBill(String billid){
		return (Scxkzgl) executeQueryForObject("Scxkzgl.getBill", billid);
	}
	/**
	 * 检查证书编号是否存在
	 * @param zsbh
	 * @param billid
	 * @return
	 */
	public int checkZsbh(String zsbh, String billid){
		Map<String, String> map = new HashMap<String, String>();
		map.put("billid", billid);
		map.put("zsbh", zsbh);
		return (Integer) executeQueryForObject("Scxkzgl.checkZsbh", map);
	}
}
