package com.jatools.web.view.move;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jatools.common.CommonUtil;
import com.jatools.common.Pager;
import com.jatools.common.constant.DictConstant;
import com.jatools.manager.move.MoveBillManager;
import com.jatools.vo.move.MoveBillHead;
import com.jatools.vo.move.MoveBillLine;
import com.jatools.vo.util.ExcelData;
import com.jatools.web.cache.CacheSingletonIntf;
import com.jatools.web.cache.OrgCache;
import com.jatools.web.cache.UserCache;
import com.jatools.web.form.move.MoveBillForm;
import com.jatools.web.util.ExportExcelUtil;

@Controller
@RequestMapping("/move/moveBill")
public class MoveBillController {
	@Autowired
	private MoveBillManager moveBillManager;
	
	@RequestMapping("/list")
	public String list(HttpServletRequest req, Model model, HttpServletResponse res) {
		MoveBillForm form = new MoveBillForm();
		Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req, "showAllFlag", "_billno");
		form.setCondition(condition);
		Pager pager = moveBillManager.getMoveBillPageData(condition, CommonUtil.getSessionOrgId(req), CommonUtil.getSessionUserId(req));
		form.setPager(pager);
		model.addAttribute("form", form);
		return "move/moveBill_list";
	}
	@RequestMapping("/toAdd")
	public String toAdd(HttpServletRequest req, HttpServletResponse res) {
//		MoveBillForm form = new MoveBillForm();
//		return new ModelAndView(pageUrl, "form", form);
		return "move/moveBill_edit";
	}

	@RequestMapping("/toEdit")
	public ModelAndView toEdit(HttpServletRequest req, HttpServletResponse res) {
		String headid = CommonUtil.getParameterNull(req, "headid");
		MoveBillForm form = new MoveBillForm();
		MoveBillHead head = moveBillManager.getMoveBillHead(headid);
		form.setHead(head);
		List<MoveBillLine> lineList = moveBillManager.getMoveBillLine(headid);
		form.setLineList(lineList);
		String pageUrl = "move/moveBill_edit";
		return new ModelAndView(pageUrl, "form", form);
	}
	
	public ModelAndView exportExcel(HttpServletRequest req, HttpServletResponse res) {
		String billType = CommonUtil.getParameterEmpty(req, "billType");
		String jmFlag = CommonUtil.getParameterEmpty(req, "jmFlag");
		if(!DictConstant.YES_OR_NO_YES.equals(jmFlag))
			jmFlag = DictConstant.YES_OR_NO_NO;
		Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req, "showAllFlag");
		Pager pager = moveBillManager.getMoveBillPageData(condition, CommonUtil.getSessionOrgId(req), CommonUtil.getSessionUserId(req));
		
		ExcelData excelData = new ExcelData();//excel数据对象
//		excelData.setTitle(DictUtil.getValue(DictConstant.MOVE_BILL_TYPE, billType));
//		excelData.setDataList(dataList);//手工重新查找数据
		excelData.setPager(pager);//直接利用分页pager对象
		excelData.addColumnWidth(new String[]{"outOrgId", "inOrgId", "createDate", "updateDate","receiveDate"}, new Integer[]{4, 4, 3, 3, 4});//宽度默认值为2
//		if(DictConstant.MOVE_BILL_TYPE_DIAOBODAN.equals(billType)){
//			excelData.setColumnTitle(new String[]{"单据编号", "业务日期", "调拨类型", "来源单据", "来源单据号", "调出组织", "调出仓库", "调入组织", "调入仓库", "装箱单号", "件数合计", "重量合计", "接收合计", "未接收合计", "所有证书合计", "创建时间", "创建人", "修改时间", "修改人", "状态"});
//			excelData.setColumnName(new String[]{"billno", "dodate", "moveType", "srcBillCode", "srcBillNo", "outOrgId", "outStockId", "inOrgId", "inStockId", "packNo", "sumCount", "sumWeight", "receCount", "noreceCount", "certCount", "createDate", "createId", "updateDate", "updateId", "status"});
//		}else if(DictConstant.MOVE_BILL_TYPE_TUIHUODAN.equals(billType)){
//			excelData.setColumnTitle(new String[]{"单据编号", "业务日期", "调出组织", "调出仓库", "调入组织", "调入仓库", "48小时退货", "装箱单号", "件数合计", "重量合计", "接收合计", "未接收合计", "所有证书合计", "创建时间", "创建人", "修改时间", "修改人", "状态"});
//			excelData.setColumnName(new String[]{"billno", "dodate", "outOrgId", "outStockId", "inOrgId", "inStockId", "backIn48Flag", "packNo", "sumCount", "sumWeight", "receCount", "noreceCount", "certCount", "createDate", "createId", "updateDate", "updateId", "status"});
//		}else if(DictConstant.MOVE_BILL_TYPE_TUICANDAN.equals(billType)){			
//			excelData.setColumnTitle(new String[]{"单据编号", "业务日期", "调出组织", "调出仓库", "调入组织", "调入仓库", "装箱单号","件数合计", "重量合计", "接收合计", "未接收合计", "所有证书合计", "创建时间", "创建人", "修改时间", "修改人", "状态"});
//			excelData.setColumnName(new String[]{"billno", "dodate", "outOrgId", "outStockId", "inOrgId", "inStockId", "packNo",  "sumCount", "sumWeight", "receCount", "noreceCount", "certCount","createDate", "createId", "updateDate", "updateId", "status"});
//		}else if(DictConstant.MOVE_BILL_TYPE_YIKUDAN.equals(billType)){
//			excelData.setColumnTitle(new String[]{"单据编号", "业务日期", "组织", "调出仓库", "调入仓库", "接收时间", "接收人", "件数合计", "重量合计", "接收合计", "未接收合计", "所有证书合计", "创建时间", "创建人", "修改时间", "修改人", "状态"});
//			excelData.setColumnName(new String[]{"billno", "dodate", "outOrgId", "outStockId",  "inStockId", "receiveDate", "receiveEmpId", "sumCount", "sumWeight", "receCount", "noreceCount", "certCount", "createDate", "createId", "updateDate", "updateId", "status"});
//		}else if(DictConstant.MOVE_BILL_TYPE_GUIZUDIAOBODAN.equals(billType)){
//			excelData.setColumnTitle(new String[]{"单据编号", "业务日期", "组织", "调出柜组", "调入柜组", "接收时间", "接收人", "件数合计", "重量合计", "接收合计", "未接收合计", "所有证书合计", "创建时间", "创建人", "修改时间", "修改人", "状态"});
//			excelData.setColumnName(new String[]{"billno", "dodate", "outOrgId", "outGroup",  "inGroup", "receiveDate", "receiveEmpId", "sumCount", "sumWeight", "receCount", "noreceCount", "certCount", "createDate", "createId", "updateDate", "updateId", "status"});
//		}
		//设置对应的缓冲数据
		excelData.addSingletonDisplayColumns(new String[]{"outOrgId", "inOrgId", "createId", "updateId", "receiveEmpId"},
					new CacheSingletonIntf[]{OrgCache.getInstance(), OrgCache.getInstance(), UserCache.getInstance(), UserCache.getInstance(), UserCache.getInstance()});
		//设置对应的数据字典
//		excelData.addDictDisplayColumns(new String[]{"moveType", "srcBillCode", "outStockId", "inStockId", "status", "outGroup",  "inGroup", "backIn48Flag"},
//					new String[]{DictConstant.MOVE_TYPE, DictConstant.BILL_CODE, DictConstant.INVCODE, DictConstant.INVCODE, DictConstant.BILL_STATUS, DictConstant.GROUPS, DictConstant.GROUPS, DictConstant.YES_OR_NO});
		
		ExportExcelUtil util = new ExportExcelUtil();
		util.setExcelData(excelData);
		util.export(res);
		return null;
	}
}