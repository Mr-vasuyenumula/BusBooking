package com.bus.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bus.pojo.User;
import com.bus.pojo.UserSignup;

public class UserDao {

	public  void saveuserDao(UserSignup user) {
		String msg=null;
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","vasu8341");
			  PreparedStatement ps=con.prepareStatement("insert into user2 values(?,?,?,?,?,?,?,?,?)");
			  ps.setString(1, user.getFirstName());
			  ps.setString(2, user.getLastName());
			  ps.setInt(3,user.getAge()); 
			  ps.setString(4,user.getGender());
			  ps.setString(5, user.getMailid());
			  ps.setString(6,user.getPassword());
			  ps.setString(7, user.getConfirmpassword());
			  
			  
			  ps.setLong(8, user.getContactnumber());
			  ps.setString(9, user.getCity());
			  
	int count=ps.executeUpdate();
	if(count==1) {
		msg="user signup insert successfully";
		
	}System.out.println(user.getFirstName());
			  
			 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public String homelogin(User user) {
		String msg=null;
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","vasu8341");
			  PreparedStatement ps=con.prepareStatement("select * from user2 where \"FirstName\" = ? and password=?");
			  ps.setString(1,user.getUsername());
			  ps.setString(2,user.getPassword());
			  
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
		String FirstName=	rs.getString(1);
		String password=rs.getString(2);
		msg="username and password are correct";
		System.out.println(msg);
		
		}if(msg==null) {
			msg="please enter correct username and password";
			System.out.println(msg);
		}

			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return msg;
		
	}
}
	
	
		
	




	
