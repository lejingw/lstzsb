package com.totyu.dao.common.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Repository;

import com.totyu.common.excel.ExcelRowData;
import com.totyu.dao.BaseDao;
import com.totyu.dao.common.ExcelUtilDao;

@Repository
public class ExcelUtilDaoImpl extends BaseDao implements ExcelUtilDao {

	public String getexcelKey(){
		//return (String)executeQueryForObject("ExcelUtil.getexcelKey", null);
		return ""+new Random().nextInt(1000)+System.currentTimeMillis();
	}

	public void saveExcelData(List<ExcelRowData> excelDataList){
		executeBatchInsert("ExcelUtil.saveExcelData", excelDataList);
	}

	public List<ExcelRowData> getExcelData(String seqId){
		return executeQueryForList("ExcelUtil.getExcelData", seqId);
	}
	public List<ExcelRowData> getCheckDbrefrenceResult(String seqId, int sheetIndex, int startCheckIndex, int columnIndex, String tableName,
			String idFieldName, String nameFieldName, String queryCondition){
		Map<String, String> map = new HashMap<String, String>();
		map.put("seqId", seqId);
		map.put("sheetIndex", ""+sheetIndex);
		map.put("startCheckIndex", ""+startCheckIndex);
		map.put("columnIndex", ""+columnIndex);
		map.put("tableName", tableName);
		map.put("idFieldName", idFieldName);
		map.put("nameFieldName", nameFieldName);
		map.put("queryCondition", queryCondition);
		return executeQueryForList("ExcelUtil.getCheckDbrefrenceResult", map);
	}
	public void convertDbrefrenceToId(String seqId, String sheetIndex,
			String startCheckIndex, String columnIndex, String tableName,
			String idFieldName, String nameFieldName, String queryCondition){
		Map<String, String> map = new HashMap<String, String>();
		map.put("seqId", seqId);
		map.put("sheetIndex", ""+sheetIndex);
		map.put("startCheckIndex", ""+startCheckIndex);
		map.put("columnIndex", ""+columnIndex);
		map.put("tableName", tableName);
		map.put("idFieldName", idFieldName);
		map.put("nameFieldName", nameFieldName);
		map.put("queryCondition", queryCondition);
		executeUpdate("ExcelUtil.convertDbrefrenceToId", map);
	}
	public void deleteTitleRows(String seqId, int startCheckIndex){
		Map<String, String> map = new HashMap<String, String>();
		map.put("seqId", seqId);
		map.put("startCheckIndex", ""+startCheckIndex);
		delete("ExcelUtil.deleteTitleRows", map);
	}
	public void deleteExcelData(String seqId){
		delete("ExcelUtil.deleteExcelData", seqId);
	}
	public List<Map> printExcelData(String seqId){
		return executeQueryForList("ExcelUtil.printExcelData", seqId);
	}
}
