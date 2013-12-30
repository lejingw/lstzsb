package com.totyu.controller.common;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.totyu.common.excel.ExcelCheckMode;
import com.totyu.common.excel.ExcelUtil;
import com.totyu.service.common.ExcelUtilService;
import com.totyu.web.util.DateUtil;

public abstract class BaseController implements ExcelCheckMode{
	@Autowired
	private ExcelUtilService excelUtilService;
	/**
	 * 数据检查通过会调用此方法，将数据保存入业务单据表
	 * @param seqId
	 */
	public abstract void saveExcelData(String seqId, HttpServletRequest req);
	
	@RequestMapping(value = "/uploadExcel")
	@ResponseBody
	public boolean upload(String seqId, HttpServletRequest req, HttpServletResponse resp) {
		ExcelUtil excelUtil = new ExcelUtil(excelUtilService);
		if(!excelUtil.checkExcelData(seqId, this))
			return false;
		saveExcelData(seqId, req);
		excelUtilService.deleteExcelData(seqId);
		return true;
	}
	
	@RequestMapping("/excelError")
	public void download(String seqId, HttpServletResponse resp) {
		ExcelUtil excelUtil = new ExcelUtil(excelUtilService);
		HSSFWorkbook workbook = excelUtil.createErrorResultExcel(seqId, this);
		String fileName = "检查结果" + DateUtil.formatSdf8(new Date()) + ".xls";
		ExcelUtil.download(fileName, workbook, resp);
	}
}
