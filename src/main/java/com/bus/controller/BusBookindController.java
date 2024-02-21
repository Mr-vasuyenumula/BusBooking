package com.bus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bus.pojo.User;
import com.bus.pojo.UserSignup;
import com.bus.service.UserService;

@Controller


public class BusBookindController {
	@RequestMapping(value="/",method = RequestMethod.GET)
	public ModelAndView login() {
		
		ModelAndView mvc = new ModelAndView ();
		mvc.setViewName("index");
		return mvc ;
	}
	@RequestMapping(value="/user",method=RequestMethod.GET)
	public ModelAndView userLogin() {
		ModelAndView mvc=new ModelAndView();
		User user=new User();
		mvc.addObject("user", user);
		mvc.setViewName("user");
		return mvc;
	}
	
	
	
	
	
	@RequestMapping(value="/signup")
	public  ModelAndView userSignup(@ModelAttribute ("user")User user) {
		ModelAndView mvc=new ModelAndView();
		mvc.setViewName("signup");

		
		
	return mvc;	
	}
	@RequestMapping(value="/saveDetails",method=RequestMethod.POST)
	public ModelAndView saveUserDetails(@ModelAttribute("signup") UserSignup user) {
ModelAndView mvc=new ModelAndView("signup");
		
		UserService userservice=new UserService();
		userservice.saveUserDetails(user);
		return mvc;
	}@RequestMapping(value="/login",method=RequestMethod.POST)
	public String homelogin(@ModelAttribute("user") User user) {
		ModelAndView mvc = new ModelAndView();
		String msg= UserService.homelogin(user);
		if(msg.equals("successful")) {
		mvc.setViewName("myprofile");
		}else {
			mvc.setViewName("user");
			mvc.addObject("usermsg", msg);
			
		}
		return "home";
		
	}
	
	
	

}
	
	
	
	


