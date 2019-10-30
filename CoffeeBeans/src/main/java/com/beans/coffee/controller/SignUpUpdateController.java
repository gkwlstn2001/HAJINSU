package com.beans.coffee.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beans.coffee.dto.RegisterDto;
import com.beans.coffee.service.RegisterService;

@Controller
public class SignUpUpdateController {
	
	@Autowired
	RegisterService registerservice;
	
	@Autowired
	HomeController homecontroller;
	

	@RequestMapping(value ="/signupupdate", method = RequestMethod.GET)
	public String signupupdate(Locale locale, Model model) {
		return "signupupdate";
	}
	
	@RequestMapping(value="/signupupdateok", method=RequestMethod.POST)
	public String signupupdateok(RegisterDto registerdto,HttpServletRequest req,HttpSession session) {
		String page = null;
		page = registerservice.signupupdateok(registerdto);
		
		if(page.contains("index")) {
			page = homecontroller.home(req);
			session.invalidate();
		} else {
			page = "signupupdate";
		}
		
		return page;
	}
}
