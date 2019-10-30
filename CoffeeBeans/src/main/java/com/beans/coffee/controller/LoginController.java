package com.beans.coffee.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.beans.coffee.service.RegisterService;

@Controller
public class LoginController {

	@Autowired
	RegisterService registerservice;

	@Autowired
	HomeController homecontroller;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "login";
	}

	@RequestMapping(value = "/loginok", method = RequestMethod.POST)
	public String loginok(RedirectAttributes rttr, @RequestParam("EMAIL") String EMAIL, @RequestParam("PASSWORD") String PASSWORD,HttpSession session,HttpServletRequest req) {
		String page = null;
		page = registerservice.login(EMAIL, PASSWORD, session);
		
		if(page.contains("index")) {
			page = homecontroller.home(req);
		} else {
			req.setAttribute("result", "fail");
			page = "login";
		}
		
		return page;
	}
}
