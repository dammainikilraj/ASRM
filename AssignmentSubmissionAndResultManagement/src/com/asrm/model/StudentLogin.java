package com.asrm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "login_table")
public class StudentLogin {
	
	@Id
	@GeneratedValue
	@Column(name = "LOGIN_ID")
	public int loginId;
	
	@Column(name = "USER_NAME")
	public String userName;
	
	@Column(name = "PASSWORD")
	public String password;
	
	@Column(name = "FLAG")
	public String flag;

	public int getLoginId() {
		return loginId;
	}

	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public StudentLogin() {
		super();
	}

	public StudentLogin(int loginId, String userName, String password, String flag) {
		super();
		this.loginId = loginId;
		this.userName = userName;
		this.password = password;
		this.flag = flag;
	}

	@Override
	public String toString() {
		return "StudentLogin [loginId=" + loginId + ", userName=" + userName + ", password=" + password + ", flag="
				+ flag + "]";
	}
	
	
	

}
