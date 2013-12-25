package com.totyu.common.excel;

import java.util.List;

public interface ExcelCheckMode {
	/**
     * 返回数据检查规则列表
     */
	List<ExcelColumnCheckRule> getColumnCheckRuleList();
}