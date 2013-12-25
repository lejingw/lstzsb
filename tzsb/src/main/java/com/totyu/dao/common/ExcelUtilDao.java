package com.totyu.dao.common;

import java.util.List;
import java.util.Map;

import com.totyu.common.excel.ExcelRowData;


public interface ExcelUtilDao {
	String getexcelKey();

	void saveExcelData(List<ExcelRowData> excelDataList);

	List<ExcelRowData> getExcelData(String seqId);
	
	List<ExcelRowData> getCheckDbrefrenceResult(String seqId,
			int sheetIndex, int startCheckIndex, int columnIndex,
			String tableName, String idFieldName, String nameFieldName,
			String queryCondition);
	
	void convertDbrefrenceToId(String seqId,
			String sheetIndex, String startCheckIndex, String columnIndex,
			String tableName, String idFieldName, String nameFieldName,
			String queryCondition);

	void deleteTitleRows(String seqId, int startCheckIndex);
	
	void deleteExcelData(String seqId);

	List<Map> printExcelData(String seqId);

}
