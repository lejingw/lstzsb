package com.totyu.apps.service;

import com.totyu.apps.common.model.Pager;
import com.totyu.apps.model.Student;

public interface StudentService {

	Pager<Student> getStudentPageData();
	
}
