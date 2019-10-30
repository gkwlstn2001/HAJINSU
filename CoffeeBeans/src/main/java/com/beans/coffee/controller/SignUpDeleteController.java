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
import com.beans.coffee.service.BbsService;
import com.beans.coffee.service.RegisterService;
import com.beans.coffee.service.VocService;

@Controller
public class SignUpDeleteController {
	
	@Autowired
	RegisterService registerservice;
	
	@Autowired
	BbsService bbsservice;
	
	@Autowired
	VocService vocservice;
	
	@Autowired
	HomeController homecontroller;
	
	@RequestMapping(value ="/signupdelete", method = RequestMethod.GET)
	public String signupdelete(Locale locale, Model model) {
		return "signupdelete";
	}
	
	@RequestMapping(value ="/signupdeleteok", method = RequestMethod.POST)
	public String signupdeleteok(RegisterDto registerdto,HttpSession session,HttpServletRequest req) {
		
		bbsservice.deletefile(registerdto);
		bbsservice.deletemap(registerdto);
		bbsservice.deletecomments(registerdto);
		bbsservice.deletebbs(registerdto);
		vocservice.deletefile(registerdto);
		vocservice.deletevoc(registerdto);
		
		registerservice.deleteregister(registerdto);
		
		session.invalidate();
		
		return homecontroller.home(req);
	}
}
