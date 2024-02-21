package com.bus.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import com.bus.pojo.Bus;
import com.bus.utility.UserUtility;

@Component
public class BusDao {

	public void addbus(Bus bus) {

			
			SessionFactory sf=UserUtility.getSessionFactory();
			Session ss=	sf.openSession();
			ss.beginTransaction();
			ss.save(bus);
			ss.getTransaction().commit();
				
			
			}		
	}



	




	

