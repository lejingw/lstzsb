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
import com.jatools.web.cache.DictCache;
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
	public String list(Model model, HttpServletRequest req, HttpServletResponse res) {
		MoveBillForm form = new MoveBillForm();
		Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req, "_billno");
		form.setCondition(condition);
		Pager pager = moveBillManager.getMoveBillPageData(condition, CommonUtil.getSessionOrgId(req), CommonUtil.getSessionUserId(req));
		form.setPager(pager);
		model.addAttribute("form", form);
		return "move/moveBill_list";
	}
	@RequestMapping("/toAdd")
	public String toAdd(HttpServletRequest req, HttpServletResponse res) {
		return "move/moveBill_edit";
	}

	@RequestMapping("/toEdit")
	public String toEdit(Model model, HttpServletRequest req, HttpServletResponse res) {
		String headid = CommonUtil.getParameterNull(req, "headid");
		MoveBillForm form = new MoveBillForm();
		MoveBillHead head = moveBillManager.getMoveBillHead(headid);
		form.setHead(head);
		List<MoveBillLine> lineList = moveBillManager.getMoveBillLine(headid);
		form.setLineList(lineList);
		model.addAttribute("form", form);
		return "move/moveBill_edit";
	}

	@RequestMapping("/exportExcel")
	public String exportExcel(HttpServletRequest req, HttpServletResponse res) {
		Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req);
		Pager pager = moveBillManager.getMoveBillPageData(condition, CommonUtil.getSessionOrgId(req), CommonUtil.getSessionUserId(req));
		
		ExcelData excelData = new ExcelData();
		excelData.setTitle(DictCache.getInstance().getValue(DictConstant.BILL_CODE, DictConstant.BILL_CODE_TIAOBODAN));
//		excelData.setDataList(dataList);//手工重新查找数据
		excelData.setPager(pager);//直接利用分页pager对象
		excelData.addColumnWidth(new String[]{"outOrgId", "inOrgId", "createDate", "updateDate"}, new Integer[]{4, 4, 3, 3});//宽度默认值为2

		excelData.setColumnTitle(new String[]{"单据编号", "业务日期", "调出组织", "调入组织", "件数合计", "重量合计", "创建时间", "创建人", "修改时间", "修改人", "状态"});
		excelData.setColumnName(new String[]{"billno", "dodate", "outOrgId", "inOrgId", "sumCount", "sumWeight", "createDate", "createId", "updateDate", "updateId", "status"});

		//设置对应的缓冲数据
		excelData.addSingletonDisplayColumns(new String[]{"outOrgId", "inOrgId", "createId", "updateId"},
					new CacheSingletonIntf[]{OrgCache.getInstance(), OrgCache.getInstance(), UserCache.getInstance(), UserCache.getInstance()});
		//设置对应的数据字典
		excelData.addDictDisplayColumns(new String[]{"status"}, new String[]{DictConstant.BILL_STATUS});
		
		ExportExcelUtil util = new ExportExcelUtil();
		util.setExcelData(excelData);
		util.export(res);
		return null;
	}
}