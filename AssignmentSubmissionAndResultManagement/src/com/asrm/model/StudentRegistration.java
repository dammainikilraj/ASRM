package com.asrm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="registration_table")
public class StudentRegistration {

	@Id
	@GeneratedValue
	@Column(name="ID")
	public int id;
	
	@Column(name="USER_NAME")
	public String userName;
	
	@Column(name="EMAIL_ID")
	public String emailId;
	
	@Column(name="PHONE_NUMBER")
	public int phoneNumber;
	
	@Column(name="GENDER")
	public String gender;
	
	@Column(name="BRANCH")
	public String branch;
	
	@Column(name="COLLEGE")
	public String college;
	
	@Column(name = "PASSWORD")
	public String password;



	public StudentRegistration(int id, String userName, String emailId, int phoneNumber, String gender, String branch,
			String college, String password) {
		super();
		this.id = id;
		this.userName = userName;
		this.emailId = emailId;
		this.phoneNumber = phoneNumber;
		this.gender = gender;
		this.branch = branch;
		this.college = college;
		this.password = password;
	}

	public StudentRegistration() {
		super();
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public int getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "StudentRegistration [id=" + id + ", userName=" + userName + ", emailId=" + emailId + ", phoneNumber="
				+ phoneNumber + ", gender=" + gender + ", branch=" + branch + ", college=" + college + ", password="
				+ password + "]";
	}


	
}
