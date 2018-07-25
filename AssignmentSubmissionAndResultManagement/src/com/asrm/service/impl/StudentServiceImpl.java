package com.asrm.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asrm.dao.StudentDao;
import com.asrm.login.LoginController;
import com.asrm.model.StudentAssgDetails;
import com.asrm.model.StudentLogin;
import com.asrm.service.StudentService;

@Service("StudentService")
public class StudentServiceImpl implements StudentService{

	@Autowired
	StudentDao studentDao;
	
	private static final Logger log = Logger.getLogger(StudentServiceImpl.class);

	@Override
	public List<StudentLogin> getLoginList(String userName, String password) {
		return studentDao.getLoginList(userName,password);
	}

	@Override
	public String submitStudentAssgDetails(StudentAssgDetails studentAssgDetails) {
		String msg=null;
		int count=studentDao.submitStudentAssgDetails(studentAssgDetails);
		if (count> 0) {
			msg="Student Details Added Successfully";
		}
		return msg;
	}

	@Override
	public List<StudentAssgDetails> getAssgList() {
		return studentDao.getAssgList();
	}
}
