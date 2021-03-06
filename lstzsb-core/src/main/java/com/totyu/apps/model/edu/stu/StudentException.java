package com.totyu.apps.model.edu.stu;

@SuppressWarnings("serial")
public class StudentException extends RuntimeException{

	public StudentException() {
		super();
	}

	public StudentException(String message, Throwable cause) {
		super(message, cause);
	}

	public StudentException(String message) {
		super(message);
	}

	public StudentException(Throwable cause) {
		super(cause);
	}

}
