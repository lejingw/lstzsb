package com.totyu.common;

import java.util.List;

public class Pager {

	protected int start;
	protected int limit;
	protected int totalCount;
	protected List<Object> pageData;

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public List<Object> getPageData() {
		return pageData;
	}

	public void setPageData(List<Object> pageData) {
		this.pageData = pageData;
	}

}
