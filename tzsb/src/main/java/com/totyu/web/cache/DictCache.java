package com.totyu.web.cache;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

import org.apache.log4j.Logger;

import com.totyu.common.Global;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.common.Dict;
import com.totyu.web.util.DateUtil;

/**
 * 数据字典缓存
 * 
 * @author wanglj
 */
public class DictCache {
	private Logger logger = Logger.getLogger(DictCache.class);
	private static DictCache instance = null;

	private final ReentrantLock lock = new ReentrantLock();
	private final Map<String, List<Dict>> map = new HashMap<String, List<Dict>>();
	private Date refreshTime = null;

	private DictCache() {
	}

	public synchronized static DictCache getInstance() {
		if (null == instance) {
			instance = new DictCache();
			instance.init();
		}
		return instance;
	}

	public void refresh() {
		lock.lock();
		try {
			map.clear();
			init();
		} finally {
			lock.unlock();
		}
	}

	private void init() {
		lock.lock();
		try {
			SysCommonService sysCommonService = (SysCommonService) Global.springContext
					.getBean("sysCommonService");
			if (null == sysCommonService) {
				throw new RuntimeException("初始化spring上下文失败");
			}
			logger.debug("初始化数据字典缓存数据...");
			try {
				List<Dict> dictItemList = sysCommonService.getAllDictItem();
				for (Dict item : dictItemList) {
					if (map.containsKey(item.getEntryCode())) {
						List<Dict> items = map.get(item.getEntryCode());
						items.add(item);
					} else {
						List<Dict> items = new ArrayList<Dict>();
						items.add(item);
						map.put(item.getEntryCode(), items);
					}
				}
				refreshTime = new Date();
			} catch (Exception e) {
				logger.error("初始化数据字典缓存数据失败");
				throw new RuntimeException("初始化数据字典缓存数据失败");
			}
		} finally {
			lock.unlock();
		}
	}

	/**
	 * 获取所有数据字典数据
	 * 
	 * @return
	 */
	public Map<String, List<Dict>> getAllDict() {
		lock.lock();
		try {
			return map;
		} finally {
			lock.unlock();
		}
	}

	/**
	 * 根据数据字典名称获取数据字典项
	 */
	public List<Dict> getDicts(String code) {
		lock.lock();
		try {
			return map.get(code);
		} finally {
			lock.unlock();
		}
	}

	/**
	 * 获取数据字典值,若不能找到则返回key
	 * 
	 * @param code
	 * @param key
	 * @return
	 */
	public String getValue(String code, String key) {
		lock.lock();
		try {
			List<Dict> list = map.get(code);
			if (null != list && !list.isEmpty()) {
				Iterator<Dict> iter = list.iterator();
				while (iter.hasNext()) {
					Dict dict = iter.next();
					if (dict.getItemKey().equals(key)) {
						return dict.getItemValue();
					}
				}
			}
			return key;
		} finally {
			lock.unlock();
		}
	}

	public String getRefreshTime() {
		return DateUtil.formatSdf1(refreshTime);
	}
}
