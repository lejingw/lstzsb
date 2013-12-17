package com.totyu.dao.qiye.jbxx;

import com.totyu.vo.qiye.jbxx.Dwxx;

public interface DwxxDao {
	/**
	 *  根据单位id获取单位信息
	 * @param dwid
	 * @return
	 */
	Dwxx getDwxxById(String dwid);

}
