package com.totyu.dao.qiye.jbxx.impl;

import org.springframework.stereotype.Repository;

import com.totyu.dao.BaseDao;
import com.totyu.dao.qiye.jbxx.DwxxDao;
import com.totyu.vo.qiye.jbxx.Dwxx;

@Repository
public class DwxxDaoImpl extends BaseDao implements DwxxDao {

	/**
	 *  根据单位id获取单位信息
	 * @param dwid
	 * @return
	 */
	public Dwxx getDwxxById(String dwid){
		return (Dwxx) executeQueryForObject("Dwxx.getDwxxById", dwid);
	}
}
