package com.totyu.dwr.qiye.jbxx;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.totyu.common.CommonUtil;
import com.totyu.service.qiye.jbxx.ScxkzglService;
import com.totyu.vo.qiye.jbxx.Scxkzgl;

/**
 * 维保许可证管理
 * 
 * @author wanglj
 */
@Component
@RemoteProxy(name = "ScxkzglDwr")
public class ScxkzglDwr {

	@Autowired
	private ScxkzglService scxkglService;
	
	/**
	 * 
	 */
	@RemoteMethod
	public String checkBill(Scxkzgl bill){
		try{
			int count = scxkglService.checkZsbh(bill.getZsbh(), bill.getBillid());
			if(count >0)
				return "证书编号["+bill.getZsbh()+"]";
		}catch(Exception e){
			return "验证单据失败\n" + e.getMessage();
		}
		return null;
	}
	/**
	 * 保存或修改单据
	 */
	@RemoteMethod
	public String saveBill(Scxkzgl bill, List<String> saveIdList, List<String> deleteIdList, HttpServletRequest req){
		try{
			scxkglService.saveBill(bill, saveIdList, deleteIdList, CommonUtil.getSessionUserId(req));
		}catch(Exception e){
			return "保存单据失败\n" + e.getMessage();
		}
		return null;
	}
	
	/**
	 * 删除单据
	 */
	@RemoteMethod
	public String deleteBill(List<String> idList, HttpServletRequest req){
		try{
			scxkglService.deleteBill(idList, CommonUtil.getSessionUserId(req));
		}catch(Exception e){
			return "删除单据失败\n" + e.getMessage();
		}
		return null;
	}
}
