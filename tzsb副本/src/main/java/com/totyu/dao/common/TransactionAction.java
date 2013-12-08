package com.totyu.dao.common;

import java.sql.SQLException;
import com.ibatis.sqlmap.client.SqlMapSession;

public interface TransactionAction {
	public Object executeAction(SqlMapSession session) throws SQLException;
}
