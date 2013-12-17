package com.totyu.dao.qiye.jbxx;

import java.util.Map;

import com.totyu.common.Pager;
import com.totyu.vo.qiye.jbxx.Scxkzgl;

public interface ScxkzglDao {
	/**
	 * 获取分页数据
	 */
	Pager<Scxkzgl> getPageData(Map<String, String> condition, String userid);
	/**
	 * 创建单据
	 * @param bill
	 * @param userid
	 * @return
	 */
	String createBill(Scxkzgl bill, String userid);
	/**
	 * 修改单据
	 * @param bill
	 * @param userid
	 */
	void updateBill(Scxkzgl bill, String userid);
	/**
	 * 删除单据
	 * @param billid
	 */
	void deleteBill(String billid);
	/**
	 * 获取单据信息
	 */
	Scxkzgl getBill(String billid);
	/**
	 * 检查证书编号是否存在
	 * @param zsbh
	 * @param billid
	 * @return
	 */
	int checkZsbh(String zsbh, String billid);

}
