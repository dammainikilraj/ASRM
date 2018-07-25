package com.asrm.service;

import java.util.List;

import com.asrm.model.StudentAssgDetails;
import com.asrm.model.StudentLogin;
import com.asrm.model.StudentRegistration;

public interface StudentService {

	List<StudentLogin> getLoginList(String userName, String password);

	String submitStudentAssgDetails(StudentAssgDetails studentAssgDetails);

	List<StudentAssgDetails> getAssgList();

	

}
