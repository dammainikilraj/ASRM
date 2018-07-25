package com.asrm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student_assg_details")
public class StudentAssgDetails {
	
	@Id
	@GeneratedValue
	@Column(name = "ID")
	public int id;
	
	@Column(name = "STUDENT_NAME")
	public String studentName;
	
	@Column(name = "YEAR")
	public String year;
	
	@Column(name = "SEMESTER")
	public String semester;
	
	@Column(name = "SUBJECT")
	public String subject;

	public StudentAssgDetails() {
		super();
	}

	public StudentAssgDetails(int id, String studentName, String year, String semester, String subject) {
		super();
		this.id = id;
		this.studentName = studentName;
		this.year = year;
		this.semester = semester;
		this.subject = subject;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Override
	public String toString() {
		return "StudentAssgDetails [id=" + id + ", studentName=" + studentName + ", year=" + year + ", semester="
				+ semester + ", subject=" + subject + "]";
	}
	
	

}
