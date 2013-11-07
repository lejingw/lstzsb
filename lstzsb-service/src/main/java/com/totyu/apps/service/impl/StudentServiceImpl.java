package com.totyu.apps.service.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.totyu.apps.common.model.Pager;
import com.totyu.apps.dao.StudentDao;
import com.totyu.apps.model.Student;
import com.totyu.apps.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {
	@Inject
	private StudentDao studentDao;
	
	public Pager<Student> getStudentPageData(){
		return studentDao.find("from Student");
	}

}
