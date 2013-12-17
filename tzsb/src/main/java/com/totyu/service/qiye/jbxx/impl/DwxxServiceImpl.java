package com.totyu.service.qiye.jbxx.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totyu.dao.qiye.jbxx.DwxxDao;
import com.totyu.service.qiye.jbxx.DwxxService;
import com.totyu.vo.qiye.jbxx.Dwxx;

/**
 * 单位信息service
 * @author wanglj
 *
 */
@Service
public class DwxxServiceImpl implements DwxxService {
	@Autowired
	private DwxxDao dwxxDao;

	/**
	 * 根据单位id获取单位信息
	 * @param dwid
	 * @return
	 */
	public Dwxx getDwxxById(String dwid){
		return dwxxDao.getDwxxById(dwid);
	}
}
