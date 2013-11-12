package com.totyu.dwr.jiancha.move;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.totyu.common.CommonUtil;
import com.totyu.service.jiancha.move.MoveBillService;
import com.totyu.vo.jiancha.move.MoveBillHead;
import com.totyu.vo.jiancha.move.MoveBillLine;

@Controller
@RemoteProxy(name="MoveBillDwr")
public class MoveBillDwr {
	@SuppressWarnings("unused")
	private static Logger logger = Logger.getLogger(MoveBillDwr.class);
	@Autowired
	private MoveBillService moveBillService;
	
	/**
	 * 获取饰品信息
	 * @param ornaCode
	 * @param orgId
	 * @return
	 */
	@RemoteMethod
	public MoveBillLine getMaterActiveInfo(String ornaCode, String orgId){
		try {
			MoveBillLine line = moveBillService.getMaterActiveInfo(ornaCode, orgId);
			return line;
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
	}
	/**
	 * 检查饰品状态是否有效
	 * @param ornaCodeList
	 * @return
	 */
	@RemoteMethod
	public List<String> checkOrnaStatusAvail(List<String> ornaCodeList){
		if(null == ornaCodeList || ornaCodeList.size()<1)
			return null;
		List<String> tmpList = moveBillService.checkOrnaStatusAvail(ornaCodeList);
		if(null!=tmpList && tmpList.size()>0)
			return tmpList;
		return null;
	}
	/**
	 * 保存或修改调拨单
	 * @param moveHead
	 * @param newOrnaCodeList 添加的行记录
	 * @param deleteOrnaCodeList 删除的行记录
	 * @return
	 */
	@RemoteMethod
	public String saveMoveBill(MoveBillHead moveHead, List<String> newOrnaCodeList, List<String> deleteOrnaCodeList, HttpSession session){
		try {
			moveBillService.saveMoveBill(moveHead, newOrnaCodeList, deleteOrnaCodeList, CommonUtil.getSessionUserId(session));
		} catch (Exception e) {
			return e.getMessage();
		}
		return null;
	}
	/**
	 * 删除调拨单
	 * @param headid
	 * @return
	 */
	@RemoteMethod
	public String deleteMoveBill(List<String> headidList, HttpServletRequest req){
		try{
			moveBillService.deleteMoveBill(headidList, CommonUtil.getSessionUserId(req));
		} catch (Exception e) {
			return e.getMessage();
		}
		return null;
	}
	@RemoteMethod
	public String test(){
		try {
			Thread.sleep(5000*1);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
//		for(int i=0;i<20;i++){
//			new Thread(new Runnable() {
//				@Override
//				public void run() {
//					System.out.println(moveBillService.getBillno("TB"));
//					System.out.println(sysCommonService.getBillno("TB"));
//				}
//			}).start();
//		}
//		if(true){
//			throw new RuntimeException("xxxxxx打发啊打发");
//		}
		return null;
	}
}
