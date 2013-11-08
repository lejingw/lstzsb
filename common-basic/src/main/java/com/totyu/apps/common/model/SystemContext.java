package com.totyu.apps.common.model;

/**
 * 通过Threadlocal完成界面层数据的传递
 * @author Administrator
 *
 */
public class SystemContext {
	/**
	 * 分页的第几条数据
	 */
	private static ThreadLocal<Integer> start = new ThreadLocal<Integer>();
	/**
	 * 分页的大小
	 */
	private static ThreadLocal<Integer> limit = new ThreadLocal<Integer>();
	/**
	 * 列表数据的排序字段
	 */
	private static ThreadLocal<String> sort = new ThreadLocal<String>();
	/**
	 * 列表数据的排序的方式 asc|desc
	 */
	private static ThreadLocal<String> order = new ThreadLocal<String>();
	
	private static ThreadLocal<String> realPath = new ThreadLocal<String>();
	
	public static Integer getStart() {
		return start.get();
	}
	
	public static void setStart(int s) {
		start.set(s);
	}
	
	public static void removeStart() {
		start.remove();
	}
	
	public static Integer getLimit() {
		return limit.get();
	}
	
	public static void setLimit(int l) {
		limit.set(l);
	}
	
	public static void removeLimit() {
		limit.remove();
	}
	
	public static String getSort() {
		return sort.get();
	}
	
	public static void setSort(String _sort) {
		sort.set(_sort);
	}
	
	public static void removeSort() {
		sort.remove();
	}
	
	public static String getOrder() {
		return order.get();
	}
	
	public static void setOrder(String _order) {
		order.set(_order);
	}
	
	public static void removeOrder() {
		order.remove();
	}
	public static String getRealPath() {
		return realPath.get();
	}
	
	public static void setRealPath(String path) {
		realPath.set(path);
	}
	
	public static void removeRealPath() {
		realPath.remove();
	}
}
