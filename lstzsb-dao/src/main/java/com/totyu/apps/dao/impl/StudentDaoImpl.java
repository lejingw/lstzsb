package com.totyu.apps.dao.impl;

import org.springframework.stereotype.Repository;

import com.totyu.apps.common.dao.impl.BaseDaoImpl;
import com.totyu.apps.dao.StudentDao;
import com.totyu.apps.model.Student;

@Repository("studentDao")
public class StudentDaoImpl extends BaseDaoImpl<Student> implements StudentDao {

}
