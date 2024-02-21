package com.bus.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Service;

import com.bus.dao.BusDao;
import com.bus.pojo.Bus;
import com.bus.pojo.BusDo;

@Service
public class BusService {

	BusDao busdao=new  BusDao();
	public void addbus(BusDo busdo) {
		String datevalue=busdo.getDatevalue();
		
		
		  
			  
		
			
				try {

					 SimpleDateFormat formatterdate=new SimpleDateFormat("dd-mm-yyyy");
						Date datevalu=formatterdate.parse(datevalue);
			
				
			
			Bus bus=new Bus();
			bus.setFrom(busdo.getBfrom());
			bus.setTo(busdo.getBto());
			bus.setBusno(busdo.getBusno());
			bus.setBusname(busdo.getBusname());
			bus.setType(busdo.getType());
			bus.setDatevalue(datevalu);
			busdao=new BusDao();
			busdao.addbus(bus);
				} catch (java.text.ParseException e) {
					 
					e.printStackTrace();
				}
	
		}
	

}
