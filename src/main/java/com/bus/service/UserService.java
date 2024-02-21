package com.bus.service;

import org.springframework.stereotype.Service;

import com.bus.dao.UserDao;
import com.bus.pojo.User;
import com.bus.pojo.UserSignup;
import com.bus.utility.UserUtility;

@Service
public class UserService {
	public void saveUserDetails(UserSignup user ) {
	UserDao userDao=new UserDao();
		UserUtility userutility=new UserUtility();
	boolean value	 =userutility.validateUser(user);
	if(value) {
		try {
		userDao.saveuserDao(user);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}else {
		String message="please enter password and confirmpassword are same or emaiid is not empty";
	}
			
		
		
		
	}

	public static String homelogin(User user) {
		UserDao userDao=new UserDao();
		String msg= userDao.homelogin(user);
		return msg;
		
	}


	
	}



