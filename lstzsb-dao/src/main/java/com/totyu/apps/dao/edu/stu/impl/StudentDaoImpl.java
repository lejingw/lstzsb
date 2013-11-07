package com.totyu.apps.dao.edu.stu.impl;

import org.springframework.stereotype.Repository;

import com.totyu.apps.common.dao.impl.BaseDaoImpl;
import com.totyu.apps.dao.edu.stu.StudentDao;
import com.totyu.apps.model.edu.stu.Student;

@Repository("studentDao")
public class StudentDaoImpl extends BaseDaoImpl<Student> implements StudentDao {

}
