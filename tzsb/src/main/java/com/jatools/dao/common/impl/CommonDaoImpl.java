package com.jatools.dao.common.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapSession;
import com.jatools.dao.BaseDao;
import com.jatools.dao.common.CommonDao;
import com.jatools.dao.common.TransactionAction;
import com.jatools.web.util.DateUtil;

@SuppressWarnings("unchecked")
public class CommonDaoImpl extends BaseDao implements CommonDao {
	private static final String BIZ_TYPE_BILLNO = "billNo";//单据编号
	/**
	 * 查找单个string类型返回值
	 * @param sql
	 * @return
	 */
	public String querySingleString(String sql){
		return (String) executeQueryForObject("Common.querySingleString", sql);
	}
	/**
	 * 获取单据编号
	 */
	public synchronized String getBillno(final String billCode) {
		return (String)executeOutTransaction(new TransactionAction() {
			public Object executeAction(SqlMapSession session) throws SQLException {
				Map<String, String> map = new HashMap<String, String>();
				String bizDate = DateUtil.formatSdf6(null);
				map.put("bizType", BIZ_TYPE_BILLNO);
				map.put("bizCode", billCode);
				map.put("bizDate", bizDate);
				map.put("billCode", billCode);
				
				Map<String, Object> resultMap = (Map<String, Object>) session.queryForObject("Common.getCurrentBillnoIndex", map);
				if(null == resultMap){
					throw new RuntimeException("单据[编码:"+billCode+"]未配置单据编码规则");
				}
				String billnoRule  = (String)resultMap.get("billnoRule");
				String bizIndex = (String)resultMap.get("bizIndex");
				if (null == bizIndex) {
					map.put("bizIndex", "1");
					session.insert("Common.createIndex", map);
					bizIndex = "0";
				} else {
					session.update("Common.increaseIndex", map);
				}
				return billnoRule + bizDate + formatNum(Integer.valueOf(bizIndex) + 1);
			}
		});
	}
	/**
	 * 格式化数字
	 */
	private String formatNum(int seq) {
		return String.format("%04d", seq);
	}

	/**
	 * 获取工具条权限
	 * @param toolbarCode
	 * @param orgId
	 * @param userid
	 * @return
	public List<RightMapping> getToolbarRight(String toolbarCode, String orgId, String userid){
		Map<String, String> condition = new HashMap<String, String>();
		condition.put("toolbarCode", toolbarCode);
		condition.put("orgId", orgId);
		condition.put("userid", userid);
		return executeQueryForList("Common.getToolbarRight", condition);
	}
	 */
}
