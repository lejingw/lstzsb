package com.totyu.service.qiye.jbxx.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totyu.common.Pager;
import com.totyu.common.constant.DictConstant;
import com.totyu.dao.qiye.jbxx.ScxkzglDao;
import com.totyu.service.BaseService;
import com.totyu.service.qiye.jbxx.ScxkzglService;
import com.totyu.vo.qiye.jbxx.Scxkzgl;
import com.totyu.web.util.StringUtil;

@Service
public class ScxkzglServiceImpl extends BaseService implements ScxkzglService {
	@Autowired
	private ScxkzglDao scxkzglDao;

	/**
	 * 获取分页数据
	 */
	public Pager<Scxkzgl> getPageData(Map<String, String> condition, String orgid){
		return scxkzglDao.getPageData(condition, orgid);
	}
	
	@Override
	public String saveBill(Scxkzgl bill, List<String> saveIdList, List<String> deleteIdList, String userid) {
		String billid = bill.getBillid();
		try {
			if (StringUtil.isEmpty(billid)) {
				billid = scxkzglDao.createBill(bill, userid);
			} else {
				asertStatus("t_dw_tzsbxkzscwb", "id", billid, "status", DictConstant.BILL_STATUS_SAVE);
				scxkzglDao.updateBill(bill, userid);
			}
			sysCommonDao.updateLoadFiles("010102", billid, saveIdList, deleteIdList, userid);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
		return billid;
	}

	@Override
	public void deleteBill(List<String> idList, String userid) {
		try {
			if(null != idList && idList.size()>0){
				for(String billid : idList){
					asertStatus("t_dw_tzsbxkzscwb", "id", billid, "status", DictConstant.BILL_STATUS_SAVE);
					scxkzglDao.deleteBill(billid);
				}
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
	}
	
	/**
	 * 获取单据信息
	 */
	public Scxkzgl getBill(String billid){
		return scxkzglDao.getBill(billid);
	}

	/**
	 * 检查证书编号是否存在
	 */
	public int checkZsbh(String zsbh, String billid){
		return scxkzglDao.checkZsbh(zsbh, billid);
	}
}
