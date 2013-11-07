package com.totyu.apps.service.edu.stu;

import com.totyu.apps.common.model.Pager;
import com.totyu.apps.model.edu.stu.Student;

public interface StudentService {

	Pager<Student> getStudentPageData();

	Student load(int stuId);

	void update(Student st);
	
}
