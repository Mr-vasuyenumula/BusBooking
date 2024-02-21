package com.bus.utility;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.bus.pojo.UserSignup;

public class UserUtility {
	
	private static final SessionFactory sessionFactory=buidSessionFactory();
	
	
	private static SessionFactory buidSessionFactory() {
		try {
			return new Configuration().configure().buildSessionFactory();
			
		}catch (Throwable ex) {
			System.err.println("Initial SessionFactory creation failed."+ ex);
			throw new ExceptionInInitializerError(ex);
		}
	} 
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	
	
	
	
	
	
	public boolean  validateUser(UserSignup user) {
		boolean value=false;
		boolean emailempty=false;
	String password=user.getPassword();
	String confirmpassword=user.getPassword();
	boolean passwordsame=password.equals(confirmpassword);
	
	String emailid= user.getMailid();
	
	if(!"".equals(emailid)|| null != emailid) {
		emailempty=true;
		
	}if(passwordsame && emailempty) {
		value=true;
	}return value;
		
		
		
	}
	public static SessionFactory getSessionFactory1() {
		// TODO Auto-generated method stub
		return null;
	}

	
}


