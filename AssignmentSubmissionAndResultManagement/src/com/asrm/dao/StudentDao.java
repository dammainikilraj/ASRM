package com.asrm.dao;

import java.util.List;

import com.asrm.model.StudentAssgDetails;
import com.asrm.model.StudentLogin;

public interface StudentDao {

	List<StudentLogin> getLoginList(String userName, String password);

	int submitStudentAssgDetails(StudentAssgDetails studentAssgDetails);

	List<StudentAssgDetails> getAssgList();

}
