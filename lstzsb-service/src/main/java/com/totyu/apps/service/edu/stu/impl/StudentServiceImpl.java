package com.totyu.apps.service.edu.stu.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.totyu.apps.common.model.Pager;
import com.totyu.apps.dao.edu.stu.StudentDao;
import com.totyu.apps.model.edu.stu.Student;
import com.totyu.apps.service.edu.stu.StudentService;

@Service
public class StudentServiceImpl implements StudentService {
	@Inject
	private StudentDao studentDao;
	
	public Pager<Student> getStudentPageData(){
		return studentDao.find("from Student");
	}

	@Override
	public Student load(int stuId) {
		return studentDao.load(stuId);
	}

	@Override
	public void update(Student st) {
		studentDao.update(st);
	}

}
