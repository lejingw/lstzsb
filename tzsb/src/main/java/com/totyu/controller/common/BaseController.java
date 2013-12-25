package com.totyu.controller.common;

import java.io.IOException;
import java.io.OutputStream;
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
	public abstract void saveExcelData(String seqId);
	
	@RequestMapping(value = "/uploadExcel")
	@ResponseBody
	public boolean upload(String seqId, HttpServletRequest req, HttpServletResponse resp) {
		ExcelUtil excelUtil = new ExcelUtil(excelUtilService);
		if(!excelUtil.checkExcelData(seqId, this))
			return false;
		saveExcelData(seqId);
		excelUtilService.deleteExcelData(seqId);
		return true;
	}

//	@RequestMapping("/excelError2")
//	public ResponseEntity<byte[]> download2(String seqId) throws IOException {
//		ExcelUtil excelUtil = new ExcelUtil(excelUtilService);
//		HSSFWorkbook workbook = excelUtil.createErrorResultExcel(seqId, this);
//		
//		HttpHeaders headers = new HttpHeaders();
////	headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
//		headers.set("Content-Type", "application/vnd.ms-excel");
//		String fileName = new String(("检查结果"+DateUtil.formatSdf8(new Date())+ ".xls").getBytes(), "ISO8859-1");
//		headers.setContentDispositionFormData("attachment", fileName);
//		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
//	}
	
	@RequestMapping("/excelError")
	public void download(String seqId, HttpServletResponse resp) throws IOException {
		ExcelUtil excelUtil = new ExcelUtil(excelUtilService);
		HSSFWorkbook workbook = excelUtil.createErrorResultExcel(seqId, this);
		OutputStream os = resp.getOutputStream();
		try {
			resp.reset();
			// 设置导出文件名
			String fileName = "检查结果" + DateUtil.formatSdf8(new Date()) + ".xls";
			resp.setContentType("application/vnd.ms-excel");
			resp.setHeader("Content-Disposition", "attachment;filename=\"" + new String(fileName.getBytes("GBK"), "ISO8859-1") + "\"");
			workbook.write(os);
			os.flush();
		} catch (Exception e) {
			throw new RuntimeException("导出excel出错");
		}finally{
			if(os != null){
				os.close();
			}
		}
	}
}
