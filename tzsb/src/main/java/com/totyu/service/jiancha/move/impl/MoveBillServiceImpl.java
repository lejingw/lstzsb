package com.totyu.service.jiancha.move.impl;

import java.util.List;
import java.util.Map;

import org.directwebremoting.io.FileTransfer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totyu.common.Pager;
import com.totyu.common.constant.DictConstant;
import com.totyu.dao.common.SysCommonDao;
import com.totyu.dao.jiancha.move.MoveBillDao;
import com.totyu.service.BaseService;
import com.totyu.service.common.SysCommonService;
import com.totyu.service.jiancha.move.MoveBillService;
import com.totyu.vo.jiancha.move.MoveBillHead;
import com.totyu.vo.jiancha.move.MoveBillLine;
import com.totyu.web.util.StringUtil;

@Service
public class MoveBillServiceImpl extends BaseService implements MoveBillService {
	@Autowired
	private MoveBillDao moveBillDao;
	@Autowired
	private SysCommonDao sysCommonDao;

	public SysCommonDao getCommonDao() {
		return sysCommonDao;
	}
	/**
	 * 获取调拨单分页数据
	 * @param condition
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public Pager getMoveBillPageData(Map<String, String> condition, String orgId, String userid) {
		return moveBillDao.getMoveBillPageData(condition, orgId, userid);
	}
	/**
	 * 获取现有量表信息
	 * 
	 * @param ornaCode
	 * @param ornaFlag
	 * @return
	 */
	public MoveBillLine getMaterActiveInfo(String ornaCode, String orgId) {
		MoveBillLine line = moveBillDao.getMaterActiveInfo(ornaCode);
		if(null == line){
			throw new RuntimeException("不能获取饰品信息");
		}
		if(!orgId.equals(line.getOrgId())){
			throw new RuntimeException("饰品所在网点不为当前选择的调出组织");
		}
		return line;
	}
	/**
	 * 检查饰品状态是否有效
	 * @param ornaCodeList
	 * @return
	 */
	public List<String> checkOrnaStatusAvail(List<String> ornaCodeList) {
		if(null == ornaCodeList || ornaCodeList.size()<1)
			return null;
		return moveBillDao.checkOrnaStatusAvail(ornaCodeList);
	}
	/**
	 * 保存或修改调拨单
	 * @param moveHead
	 * @param newOrnaCodeList 添加的行记录
	 * @param deleteOrnaCodeList 删除的行记录
	 * @return
	 */
	public void saveMoveBill(MoveBillHead moveHead, List<String> newOrnaCodeList, List<String> deleteOrnaCodeList, List<String> saveIdList, List<String> deleteIdList, String userid) {
		try {
			String headid = moveHead.getHeadid();
			if (StringUtil.isEmpty(headid)) {
				moveHead.setBillno(sysCommonDao.getBillno(DictConstant.BILL_CODE_TIAOBODAN));
				headid = moveBillDao.saveMoveBillHead(moveHead, userid);
			} else {
				asertStatus("jat_move_head", "headid", headid, "status", DictConstant.BILL_STATUS_SAVE);
				moveBillDao.updateMoveBillHead(moveHead, userid);
				moveBillDao.deleteMoveBillLineByOrnaCode(deleteOrnaCodeList, headid, userid);
			}
			moveBillDao.saveMoveBillLine(newOrnaCodeList, headid, userid);
			moveBillDao.updateMoveBillSumNum(headid, userid);
			sysCommonDao.updateLoadFiles(DictConstant.BILL_CODE_TIAOBODAN, headid, saveIdList, deleteIdList, userid);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("保存失败");
		}
	}
	
	/**
	 * 删除调拨单
	 * @param headidList
	 * @return
	 */
	public void deleteMoveBill(List<String> headidList, String userid) {
		if(null != headidList && headidList.size()>0){
			for(String headid : headidList){
				asertStatus("jat_move_head", "headid", headid, "status", DictConstant.BILL_STATUS_SAVE);
				moveBillDao.deleteMoveBillLine(headid);
				moveBillDao.deleteMoveBillHead(headid);
			}
		}
	}
	
	public MoveBillHead getMoveBillHead(String headid){
		return moveBillDao.getMoveBillHead(headid);
	}
	public List<MoveBillLine> getMoveBillLine(String headid){
		return moveBillDao.getMoveBillLine(headid);
	}
//	public String getBillno(String string){
//		String str = sysCommonDao.getBillno(string);
//		long start = System.currentTimeMillis();
//		int count = 0;
//		for(int i=0;i<100000;i++){
//			for(int j=0;j<10000;j++){
//				count += i + j;
//			}
//		}
//		System.out.print(count + "\t\t\t cost:\t:" + (System.currentTimeMillis() - start) + "\t\t");
//		return str;
//	}
}