package com.totyu.common.excel;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFComment;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;

import com.totyu.common.PropertyUtil;
import com.totyu.service.common.ExcelUtilService;

public class ExcelUtil {
	private ExcelUtilService excelUtilService;
	private List<ExcelRowData> excelDataList;
	private String seqId;
	private int startCheckIndex = 2;
	private HSSFWorkbook workbook = new HSSFWorkbook();
	private Pattern numberPattern = Pattern.compile("^-?\\d+$");
	private Pattern floatPattern = Pattern.compile("^-?\\d+\\.?\\d*$");
	private Pattern datePattern =		Pattern.compile("^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}$");
	private Pattern timePattern =		Pattern.compile("^[0-9]{1,2}\\:[0-9]{1,2}(\\:[0-9]{1,2}(\\.[0-9])?)?$");
	private Pattern dateTimePattern =	Pattern.compile("^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}\\s[0-9]{1,2}\\:[0-9]{1,2}(\\:[0-9]{1,2}(\\.[0-9])?)?$");
//	private Pattern dateTimePattern =	Pattern.compile("^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}(\\s[0-9]{1,2}\\:[0-9]{1,2}(\\:[0-9]{1,2}(\\.[0-9])?)?)?$");
	
	public ExcelUtil(ExcelUtilService excelUtilService) {
		this.excelUtilService = excelUtilService;
	}
	
	public void setStartCheckIndex(int startCheckIndex) {
		this.startCheckIndex = startCheckIndex;
	}
	/**
	 * 保存excel文件数据
	 * @param file
	 * @return
	 */
	public String saveExcelData(String filePath){
		return saveExcelData(new File(filePath));
	}
	/**
	 * 保存excel文件数据
	 * @param file
	 * @return
	 */
	public String saveExcelData(File file){
		InputStream is = null;
		try {
			is = new FileInputStream(file);
			HSSFWorkbook wb = new HSSFWorkbook(is);
			String seqId = excelUtilService.saveExcelData(wb);
			is.close();
			return seqId;
		} catch (Exception e) {
			try {
				if(null != is){
					is.close();
					is = null;
				}
			} catch (IOException e1) {
			}
			return null;
		}finally {
			try {
				if(null != is){
					is.close();
					is = null;
				}
			} catch (IOException e1) {
			}
		}
	}
	
	public boolean checkExcelData(String seqId, ExcelCheckMode excelCheckModes) {
		this.seqId = seqId;
		this.excelDataList = excelUtilService.getExcelData(seqId);
		for(ExcelColumnCheckRule checkMode : excelCheckModes.getColumnCheckRuleList()){
			if(!checkExcelByMode(checkMode, false)){
				return false;
			}
		}
		//验证通过后修正数据
		excelUtilService.deleteTitleRows(seqId, this.startCheckIndex);
		for(ExcelColumnCheckRule checkMode : excelCheckModes.getColumnCheckRuleList()){
			if(2 == checkMode.getCheckWay() && checkMode.isConvertToIdFlag()){
				excelUtilService.convertDbrefrenceToId(seqId, checkMode.getSheetIndex(), startCheckIndex, checkMode.getColumnIndex(), checkMode.getDbrefrence());
			}
		}
//		excelUtilService.printExcelData(seqId);
		return true;
	}

	private boolean checkExcelByMode(ExcelColumnCheckRule checkMode, boolean storeFlag) {
		if(1 == checkMode.getCheckWay()){//类型检查
			if(!checkRowColumnType(checkMode, storeFlag))
				return false;
		}else if(2 == checkMode.getCheckWay()){//数据库段
			if(!checkRowDbrefrence(checkMode, storeFlag))
				return false;
		}else if(3 == checkMode.getCheckWay()){//自定义检查
			if(!checkRowSelfDefined(checkMode, storeFlag))
				return false;
		}
		return true;
	}
	
	/**
	 * 自定义检查
	 * @param checkMode
	 */
	private boolean checkRowSelfDefined(ExcelColumnCheckRule checkMode, boolean storeFlag){
		ExcelSelfDefinedCheck selfDefinedCheck = checkMode.getSelfDefinedCheck();
		for(ExcelRowData rowData : excelDataList){
			if(checkMode.getSheetIndex() != rowData.getSheetIndex())
				continue;
			if(startCheckIndex > rowData.getRowIndex())
				continue;
			String val = null;
			try {
				val = PropertyUtil.getProperty(rowData, "col" + checkMode.getColumnIndex());
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(!selfDefinedCheck.check(rowData.getRowIndex(), val, rowData, excelDataList)){
				if(storeFlag){
					String errorMsg = selfDefinedCheck.getErrorMsg(rowData.getRowIndex(), val, rowData, excelDataList);
					setCheckResultMessage(rowData.getSheetIndex(), rowData.getRowIndex(),  checkMode.getColumnIndex(), errorMsg, val != null);
				}else{					
					return false;
				}
			}
		}
		return true;
	}
	/**
	 * 数据库段检查
	 * @param checkMode
	 */
	private boolean checkRowDbrefrence(ExcelColumnCheckRule checkMode, boolean storeFlag){
		ExcelDbrefrenceCheck dbrefrence = checkMode.getDbrefrence();
		List<ExcelRowData> checkResultList = excelUtilService.getCheckDbrefrenceResult(seqId, checkMode.getSheetIndex(), startCheckIndex, checkMode.getColumnIndex(), dbrefrence);
		for(ExcelRowData rowData : checkResultList){
			String val = rowData.getResult();
			if(null == val || "".equals(val)){
				if(checkMode.isAllowEmpty())
					continue;
				else{
					if(storeFlag){
						setCheckResultMessage(rowData.getSheetIndex(), rowData.getRowIndex(),  checkMode.getColumnIndex(), "不能为空", false);
					}else{
						return false;
					}
				}
			}else{
				if(storeFlag){
					setCheckResultMessage(rowData.getSheetIndex(), rowData.getRowIndex(),  checkMode.getColumnIndex(), "当前值无效，不能找到对应id", true);
				}else{					
					return false;
				}
			}
		}
		return true;
	}
	/**
	 * 类型检查
	 * @param checkMode
	 */
	private boolean checkRowColumnType(ExcelColumnCheckRule checkMode, boolean storeFlag){
		for(ExcelRowData rowData : excelDataList){
			if(checkMode.getSheetIndex() != rowData.getSheetIndex())
				continue;
			if(startCheckIndex>rowData.getRowIndex())
				continue;
			String val = null;
			try {
				val = PropertyUtil.getProperty(rowData, "col" + checkMode.getColumnIndex());
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(null == val || "".equals(val)){
				if(!checkMode.isAllowEmpty()){
					if(storeFlag){
						setCheckResultMessage(rowData.getSheetIndex(), rowData.getRowIndex(),  checkMode.getColumnIndex(), "不能为空", false);
					}else{
						return false;
					}
				}
			}else{
				if(ExcelColumnEnum.NUMBER_COLUMN.equals(checkMode.getTypeCheck())){
					if(!numberPattern.matcher(val).matches()){
						if(storeFlag){							
							setCheckResultMessage(rowData.getSheetIndex(), rowData.getRowIndex(),  checkMode.getColumnIndex(), "必须为整数类型", true);
						}else{							
							return false;
						}
					}
				}else if(ExcelColumnEnum.FLOAT_COLUMN.equals(checkMode.getTypeCheck())){
					if(!floatPattern.matcher(val).matches()){
						if(storeFlag){
							setCheckResultMessage(rowData.getSheetIndex(), rowData.getRowIndex(),  checkMode.getColumnIndex(), "必须为数字类型", true);
						}else{							
							return false;
						}
					}
				}else if(ExcelColumnEnum.DATE_COLUMN.equals(checkMode.getTypeCheck())){
					if(!datePattern.matcher(val).matches()){
						if(storeFlag){
							setCheckResultMessage(rowData.getSheetIndex(), rowData.getRowIndex(),  checkMode.getColumnIndex(), "日期格式(yyyy-mm-dd)不正确", true);
						}else{							
							return false;
						}
					}
				}else if(ExcelColumnEnum.TIME_COLUMN.equals(checkMode.getTypeCheck())){
					if(!timePattern.matcher(val).matches()){
						if(storeFlag){
							setCheckResultMessage(rowData.getSheetIndex(), rowData.getRowIndex(),  checkMode.getColumnIndex(), "时间格式(hh:mi:ss)不正确", true);
						}else{							
							return false;
						}
					}
				}else if(ExcelColumnEnum.DATE_TIME_COLUMN.equals(checkMode.getTypeCheck())){
					if(!dateTimePattern.matcher(val).matches()){
						if(storeFlag){
							setCheckResultMessage(rowData.getSheetIndex(), rowData.getRowIndex(),  checkMode.getColumnIndex(), "日期时间格式(yyyy-mm-dd hh:mi:ss)不正确", true);
						}else{							
							return false;
						}
					}
				}
			}
		}
		return true;
	}
	
	public HSSFWorkbook createErrorResultExcel(String seqId, ExcelCheckMode excelCheckModes) {
		this.seqId = seqId;
		this.excelDataList = excelUtilService.getExcelData(seqId);
		createWorkbook();
		for(ExcelColumnCheckRule checkMode : excelCheckModes.getColumnCheckRuleList()){
			checkExcelByMode(checkMode, true);
		}
		return this.workbook;
	}

	private void setCheckResultMessage(int sheetIndex, int rowIndex, int columnIndex, String msg, boolean commentFlag){
		HSSFSheet sheet = workbook.getSheetAt(sheetIndex);
		HSSFRow row = sheet.getRow(rowIndex);
		
		HSSFCell cell = row.getCell(columnIndex);
		if(null == cell){
			cell = row.createCell(columnIndex);
		}
		HSSFCellStyle style = workbook.createCellStyle();
		style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
		style.setFillForegroundColor(HSSFColor.RED.index);
		cell.setCellStyle(style);
		if(commentFlag){
			HSSFClientAnchor anchor = new HSSFClientAnchor(0, 0, 0, 0, (short) 3, 3, (short) 5, 6);
			HSSFPatriarch patr = sheet.createDrawingPatriarch();
			HSSFComment comment = patr.createCellComment(anchor);
			//设置注释内容
			comment.setString(new HSSFRichTextString(msg));
			comment.setAuthor("lstzsb");
			cell.setCellComment(comment);
		}else{
			cell.setCellValue(msg);
		}
	}
	
	private void createWorkbook(){
		for(ExcelRowData rowData : excelDataList){
			HSSFSheet sheet = null;
			try {
				sheet = workbook.getSheetAt(rowData.getSheetIndex());
			} catch (IllegalArgumentException e) {
				sheet = null;
			}
			if(sheet == null){
				sheet = workbook.createSheet("sheet" + rowData.getSheetIndex());
			}
			HSSFRow row = sheet.getRow(rowData.getRowIndex());
			if(row == null){
				row = sheet.createRow(rowData.getRowIndex());
			}
			for(int i=0;i<100;i++){
				try {
					String val = PropertyUtil.getProperty(rowData, "col" + i);
					if(null != val){					
						HSSFCell cell = row.createCell(i);
						cell.setCellValue(val);
					}
				} catch (Exception e) {
					e.printStackTrace();
//					System.out.println("获取数据出错");
				}
			}
		}
	}
	
	public static void download(String fileName, HSSFWorkbook workbook, HttpServletResponse resp){
		OutputStream os = null;
	    try {
	    	resp.reset();
	    	os = resp.getOutputStream();
	    	System.out.println("os.name=" + System.getProperties().getProperty("os.name"));
	    	if("Mac OS X".equals(System.getProperties().getProperty("os.name"))){	    		
	    		resp.setHeader("Content-Disposition", "attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO8859-1") + "\"");
	    	}else{
	   	    	resp.setHeader("Content-Disposition", "attachment; filename=\"" + new String(fileName.getBytes("GBK"), "ISO8859-1") + "\"");
	    	}
	        resp.setContentType("application/vnd.ms-excel");
	        workbook.write(os);
	        os.flush();
	    } catch(Exception e){
	    	e.printStackTrace();
	    } finally {
	    	try {
            	if (os != null) {
					os.close();
					os = null;
	        	}
			} catch (IOException e) {
				e.printStackTrace();
	        }
	    }
	}
}
