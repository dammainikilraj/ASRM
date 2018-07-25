package com.asrm.dao.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asrm.dao.StudentDao;
import com.asrm.model.StudentAssgDetails;
import com.asrm.model.StudentLogin;
import com.asrm.service.StudentService;
import com.asrm.service.impl.StudentServiceImpl;

@Repository("StudentDao")
public class StudentDaoImpl implements StudentDao{
	
	
	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private static final Logger log = Logger.getLogger(StudentDaoImpl.class);

	@SuppressWarnings("unchecked")
	@Override
	public List<StudentLogin> getLoginList(String userName, String password) {
	Session session=null;
	List<StudentLogin> ss=null;
	try {
		session=sessionFactory.openSession();
		Query query=session.createQuery("from StudentLogin where userName=? and password=?");
		query.setParameter(0, userName);
		query.setParameter(1, password);
		ss=query.list();
		
	} catch (Exception e) {
		log.error("Error from getLoginList dao", e);
	}finally {
		session.close();
	}
		return ss;
	}

	@Override
	public int submitStudentAssgDetails(StudentAssgDetails studentAssgDetails) {
		Session session=null;
		Transaction tx=null;
		int count=0;
		try {
			session=sessionFactory.openSession();
			tx=session.beginTransaction();
			count=(int) session.save(studentAssgDetails);
			tx.commit();
		} catch (Exception e) {
			log.error("Error from submitStudentAssgDetails dao", e);
			if (tx != null) {
				tx.rollback();
			}
		}
		finally {
			session.close();
		}
		
		return count;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<StudentAssgDetails> getAssgList() {
		Session session=null;
		List<StudentAssgDetails> assgList=null;
		try {
			session=sessionFactory.openSession();
			Query query=session.createQuery("from StudentAssgDetails");
			assgList = query.list();
		} catch (Exception e) {
			log.error("Error from getAssgList dao", e);
		}
		return assgList;
	}

}
