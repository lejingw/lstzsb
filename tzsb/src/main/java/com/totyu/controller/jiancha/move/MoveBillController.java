package com.totyu.controller.jiancha.move;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.common.CommonUtil;
import com.totyu.common.Pager;
import com.totyu.common.constant.DictConstant;
import com.totyu.common.excel.ExcelData;
import com.totyu.service.jiancha.move.MoveBillService;
import com.totyu.vo.jiancha.move.MoveBillHead;
import com.totyu.vo.jiancha.move.MoveBillLine;
import com.totyu.web.cache.CacheSingletonIntf;
import com.totyu.web.cache.DictCache;
import com.totyu.web.cache.OrgCache;
import com.totyu.web.cache.UserCache;
import com.totyu.web.util.ExportExcelUtil;

@Controller
@RequestMapping("/jiancha/move/moveBill")
public class MoveBillController {
	@Autowired
	private MoveBillService moveBillService;
	
	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest req, HttpServletResponse res) {
		Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req, "_billno");
		Pager pager = moveBillService.getMoveBillPageData(condition, CommonUtil.getSessionOrgId(req), CommonUtil.getSessionUserId(req));
		model.addAttribute("pager", pager);
		return "jiancha/move/moveBill_list";
	}
	@RequestMapping("/toAdd")
	public String toAdd(HttpServletRequest req, HttpServletResponse res) {
		return "jiancha/move/moveBill_edit";
	}

	@RequestMapping("/toEdit")
	public String toEdit(Model model, HttpServletRequest req, HttpServletResponse res) {
		String headid = CommonUtil.getParameterNull(req, "headid");
		MoveBillHead head = moveBillService.getMoveBillHead(headid);
		List<MoveBillLine> lineList = moveBillService.getMoveBillLine(headid);
		model.addAttribute("head", head);
		model.addAttribute("lineList", lineList);
		return "jiancha/move/moveBill_edit";
	}

	@RequestMapping("/exportExcel")
	public String exportExcel(HttpServletRequest req, HttpServletResponse res) {
		Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req);
		Pager pager = moveBillService.getMoveBillPageData(condition, CommonUtil.getSessionOrgId(req), CommonUtil.getSessionUserId(req));
		
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