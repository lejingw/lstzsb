package com.totyu.service.qiye.jbxx;

import java.util.List;
import java.util.Map;

import com.totyu.common.Pager;
import com.totyu.vo.qiye.jbxx.Scxkzgl;

public interface ScxkzglService {
	/**
	 * 保存或修改单据
	 */
	String saveBill(Scxkzgl bill, List<String> saveIdList, List<String> deleteIdList, String userid);
	/**
	 * 删除单据
	 */
	void deleteBill(List<String> idList, String userid);
	/**
	 * 获取分页数据
	 */
	Pager<Scxkzgl> getPageData(Map<String, String> condition, String orgid);
	/**
	 * 获取单据信息
	 */
	Scxkzgl getBill(String billid);
	/**
	 * 检查证书编号是否存在
	 */
	int checkZsbh(String zsbh, String billid);

}
