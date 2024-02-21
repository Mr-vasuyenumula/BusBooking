package com.bus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bus.pojo.Bus;
import com.bus.pojo.BusDo;
import com.bus.service.BusService;
@Controller
public class BusController {

    BusService busservice=new BusService();
	
	@RequestMapping(value="/addBus",method = RequestMethod.GET)
	public ModelAndView showAddBussForm() {
		ModelAndView mvc=new ModelAndView();
		mvc.setViewName("addbus");
		return mvc;
		
	}
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public ModelAndView  submitAddBusForm(@ModelAttribute("bus") BusDo bus) {
		ModelAndView mvc=new ModelAndView();
		busservice.addbus(bus);
		mvc.setViewName("addbus");
			return mvc;
	}
}
