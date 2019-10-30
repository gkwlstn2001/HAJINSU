package com.beans.coffee.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LogoutController {
	
	@Autowired
	HomeController homecontroller;
	
	@RequestMapping(value ="logout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model,HttpSession session,HttpServletRequest req) {
		session.invalidate();
		return homecontroller.home(req);
	}
}
