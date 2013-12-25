package com.totyu.controller.qiye.jbxx;

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
import com.totyu.service.qiye.jbxx.ScxkzglService;
import com.totyu.vo.qiye.jbxx.Scxkzgl;
import com.totyu.web.cache.CacheSingletonIntf;
import com.totyu.web.cache.QiyeOrgCache;
import com.totyu.web.cache.UserCache;
import com.totyu.web.util.ExportExcelUtil;

@Controller
@RequestMapping("/qiye/jbxx/scxkzgl")
public class ScxkzglController {
	@Autowired
	private ScxkzglService scxkzglService;

	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest req, HttpServletResponse res) {
		Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req, "zsbh", "dwmc", "sblb", "yxrq1", "yxrq2", "sfsj", "sfzz", "sfaz", "sfgz", "sfwx", "qstatus");
		Pager<Scxkzgl> pager = scxkzglService.getPageData(condition, CommonUtil.getSessionOrgId(req));
		model.addAttribute("pager", pager);
		model.addAttribute("condition", condition);
		return "qiye/jbxx/scxkzgl_list";
	}
	@RequestMapping("/toAdd")
	public String toAdd(Model model, HttpServletRequest req, HttpServletResponse res) {
		return "qiye/jbxx/scxkzgl_edit";
	}
	
	@RequestMapping("/toEdit")
	public String toEdit(String billid, Model model, HttpServletRequest req, HttpServletResponse res) {
		Scxkzgl bill = scxkzglService.getBill(billid);
		model.addAttribute("bill", bill);
		return "qiye/jbxx/scxkzgl_edit";
	}

	@RequestMapping("/toView")
	public String toView(String billid, Model model, HttpServletRequest req, HttpServletResponse res) {
		Scxkzgl bill = scxkzglService.getBill(billid);
		model.addAttribute("bill", bill);
		return "qiye/jbxx/scxkzgl_view";
	}

	@RequestMapping("/export")
	public String export(String billid, Model model, HttpServletRequest req, HttpServletResponse res) {
		Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req);
		Pager pager = scxkzglService.getPageData(condition, CommonUtil.getSessionOrgId(req));
		
		ExcelData excelData = new ExcelData();
		excelData.setTitle("生产许可证");
//		excelData.setDataList(dataList);//手工重新查找数据
		excelData.setPager(pager);//直接利用分页pager对象
//		excelData.addColumnWidth(new String[]{"createId", "updateId", "createDate", "updateDate"}, new Integer[]{3, 3, 4, 4});//宽度默认值为2

		excelData.setColumnTitle(new String[]{"证书编号", "单位名称", "单位地址", "制造地址", "有效日期", "批准机构", "设备类别", "是否设计", "是否制造", "是否安装", "是否改造", "是否维修", "创建人", "创建时间", "修改人", "修改时间", "状态"});
		excelData.setColumnName(new String[]{"zsbh", "dwId", "dwdz", "zzdz", "yxrq", "pzjg", "sblb", "sfsj", "sfzz", "sfaz", "sfgz", "sfwx", "createId", "createDate", "updateId", "updateDate", "status"});

		//设置对应的缓冲数据
		excelData.addSingletonDisplayColumns(new String[]{"createId", "updateId", "dwId"},
					new CacheSingletonIntf[]{UserCache.getInstance(), UserCache.getInstance(), QiyeOrgCache.getInstance()});
		//设置对应的数据字典
		excelData.addDictDisplayColumns(new String[]{"sblb", "sfsj", "sfzz", "sfaz", "sfgz", "sfwx", "status"},
				new String[]{DictConstant.SBLX, DictConstant.YES_OR_NO,DictConstant.YES_OR_NO,DictConstant.YES_OR_NO,DictConstant.YES_OR_NO,DictConstant.YES_OR_NO,
				DictConstant.BILL_STATUS});
		
		ExportExcelUtil util = new ExportExcelUtil();
		util.setExcelData(excelData);
		util.export(res);
		return null;
	}
}
