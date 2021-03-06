package com.totyu.apps.common.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.inject.Inject;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.totyu.apps.common.dao.BaseDao;
import com.totyu.apps.common.model.Pager;
import com.totyu.apps.common.model.SystemContext;

@Repository("baseDao")
public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T> {

	/**
	 * 获取泛型的class
	 */
	private Class<T> clz;

	@SuppressWarnings("unchecked")
	private Class<T> getClz() {
		if (clz == null)
			clz = (Class<T>) ((ParameterizedType) this.getClass()
					.getGenericSuperclass()).getActualTypeArguments()[0];
		return clz;
	}

	@Inject
	public void setSuperSessionFactory(SessionFactory factory) {
		super.setSessionFactory(factory);
	}

	public T add(T t) {
		this.getHibernateTemplate().save(t);
		return t;
	}

	public void update(T t) {
		this.getHibernateTemplate().update(t);
	}

	public void delete(T t) {
		this.getHibernateTemplate().delete(t);
	}

	public void delete(int id) {
		delete(load(id));
	}

	@SuppressWarnings("unchecked")
	public List<T> list(String hql, Object[] args) {
		String order = SystemContext.getOrder();
		String sort = SystemContext.getSort();
		if (sort != null && !"".equals(sort.trim())) {
			hql = hql + " order by " + sort;
			if (order != null && !"".equals(order.trim())) {
				hql = hql + " " + order;
			} else {
				hql = hql + " asc";
			}
		}
		Query q = this.getSession().createQuery(hql);
		if (args != null) {
			int index = 0;
			for (Object arg : args) {
				q.setParameter(index++, arg);
			}
		}

		return q.list();
	}

	public List<T> list(String hql) {
		return list(hql, null);
	}

	public List<T> list(String hql, Object arg) {
		return list(hql, new Object[] { arg });
	}

	@SuppressWarnings("unchecked")
	public Pager<T> find(String hql, Object[] args) {
		Pager<T> pages = new Pager<T>();
		String sort = SystemContext.getSort();
		String order = SystemContext.getOrder();
		int limit = SystemContext.getLimit();
		int start = SystemContext.getStart();
		String countHql = getCountHql(hql);
		if (sort != null && !"".equals(sort.trim())) {
			hql += " order by " + sort;
			if (order != null && !"".equals(order.trim())) {
				hql += " " + order;
			} else {
				hql += " asc";
			}
		}
		Query query = setQuery(hql, args);
		Query countQuery = setQuery(countHql, args);
		List<T> datas = query.setFirstResult(start)
				.setMaxResults(limit).list();
		pages.setDatas(datas);
		pages.setStart(start);
		pages.setLimit(limit);
		Long totalRecord = (Long) countQuery.uniqueResult();
		pages.setTotalRecord(totalRecord.intValue());
		return pages;
	}

	public Pager<T> find(String hql, Object arg) {
		return this.find(hql, new Object[] { arg });
	}

	public Pager<T> find(String hql) {
		return find(hql, null);
	}

	@SuppressWarnings("unchecked")
	public T loadByHql(String hql, Object[] args) {
		Query q = setQuery(hql, args);
		T t = (T) q.uniqueResult();
		return t;
	}

	public T loadByHql(String hql, Object arg) {
		return loadByHql(hql, new Object[] { arg });
	}

	public T loadByHql(String hql) {
		return loadByHql(hql);
	}

	public T load(int id) {
		return this.getHibernateTemplate().load(getClz(), id);
	}

	public Object loadObjByHQL(String hql, Object[] args) {
		Object t = null;
		Query q = setQuery(hql, args);
		t = (Object) q.uniqueResult();
		return t;
	}

	public Object loadObjByHQL(String hql, Object arg) {
		return loadObjByHQL(hql, new Object[] { arg });
	}

	public Object loadObjByHQL(String hql) {
		return loadObjByHQL(hql, null);
	}

	public void updateByHQL(String hql, Object[] args) {
		Query q = setQuery(hql, args);
		q.executeUpdate();
	}

	public void updateByHQL(String hql, Object arg) {
		this.updateByHQL(hql, new Object[] { arg });

	}

	public void updateByHQL(String hql) {
		this.updateByHQL(hql, null);
	}

	private String getCountHql(String hql) {
		String str = hql.substring(hql.indexOf("from "));
		str = "select count(*) " + str;
		str = str.replaceAll("fetch", "");
		return str;
	}

	private Query setQuery(String hql, Object[] args) {
		Query q = this.getSession().createQuery(hql);
		if (args != null) {
			int index = 0;
			for (Object arg : args) {
				q.setParameter(index++, arg);
			}
		}
		return q;
	}

	@SuppressWarnings("unchecked")
	public Pager<T> findByAlias(String hql, Object[] args,
			Map<String, Object> alias) {
		Pager<T> pages = new Pager<T>();
		String sort = SystemContext.getSort();
		String order = SystemContext.getOrder();
		int start = SystemContext.getStart();
		int limit = SystemContext.getLimit();
		String countHql = getCountHql(hql);
		if (sort != null && !"".equals(sort.trim())) {
			hql += " order by " + sort;
			if (order != null && !"".equals(order.trim())) {
				hql += " " + order;
			} else {
				hql += " asc";
			}
		}
		Query query = setQuery(hql, args);
		setAliasQuery(query, alias);
		Query countQuery = setQuery(countHql, args);
		setAliasQuery(countQuery, alias);
		List<T> datas = query.setFirstResult(start)
				.setMaxResults(limit).list();
		pages.setDatas(datas);
		pages.setStart(start);
		pages.setLimit(limit);
		Long totalRecord = (Long) countQuery.uniqueResult();
		pages.setTotalRecord(totalRecord.intValue());
		return pages;
	}

	@SuppressWarnings("rawtypes")
	private void setAliasQuery(Query query, Map<String, Object> alias) {
		Set<String> keys = alias.keySet();
		for (String key : keys) {
			Object obj = alias.get(key);
			if (obj instanceof Collection) {
				query.setParameterList(key, (Collection) obj);
			} else {
				query.setParameter(key, obj);
			}
		}
	}

	public Pager<T> findByAlias(String hql, Object arg,
			Map<String, Object> alias) {
		return findByAlias(hql, new Object[] { arg }, alias);
	}

	public Pager<T> findByAlias(String hql, Map<String, Object> alias) {
		return findByAlias(hql, null, alias);
	}

	@SuppressWarnings("unchecked")
	public List<T> listByAlias(String hql, Object[] args, Map<String, Object> alias) {
		String order = SystemContext.getOrder();
		String sort = SystemContext.getSort();
		if (sort != null && !"".equals(sort.trim())) {
			hql = hql + " order by " + sort;
			if (order != null && !"".equals(order.trim())) {
				hql = hql + " " + order;
			} else {
				hql = hql + " asc";
			}
		}
		Query q = this.getSession().createQuery(hql);
		if (args != null) {
			int index = 0;
			for (Object arg : args) {
				q.setParameter(index++, arg);
			}
		}
		setAliasQuery(q, alias);
		return q.list();
	}

	public List<T> listByAlias(String hql, Object obj, Map<String, Object> alias) {
		return this.listByAlias(hql, new Object[] { obj }, alias);
	}

	public List<T> listByAlias(String hql, Map<String, Object> alias) {
		return this.listByAlias(hql, null, alias);
	}

}
