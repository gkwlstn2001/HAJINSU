package com.beans.coffee.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beans.coffee.dto.RegisterDto;
import com.beans.coffee.service.RegisterService;

@Controller
public class SignUpController {
	
	@Autowired
	RegisterService registerservice;
	
	@Autowired
	HomeController homecontroller;
	
	@RequestMapping(value ="/signup", method = RequestMethod.GET)
	public String signup(Locale locale, Model model) {
		return "signup";
	}
	
	@RequestMapping(value="idcheck", method =RequestMethod.GET)
	@ResponseBody
	public String idcheck(RegisterDto registerdto) {
		
		String id = null;
		String result = null;
		id = registerservice.idcheck(registerdto);

		if(id != null && !id.equals("")) {
			result = "fail";
		} else {
			result = "success";
		}
		
		return result;
	}
	
	@RequestMapping(value ="/signupok", method = RequestMethod.POST)
	public String signupok(RegisterDto registerdto,HttpServletRequest req) {
		String page = null;
		page = registerservice.register(registerdto);
		
		if(page.contains("index")) {
			page = homecontroller.home(req);
		} else {
			page = "signup";
		}
		
		return page;
	}
}
