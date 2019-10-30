package com.beans.coffee.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beans.coffee.service.VocService;

@Controller
public class VocDeleteController {
	
	@Autowired
	VocService vocservice;
	
	@Autowired
	VocViewController vocviewcontroller;
	
	@RequestMapping(value ="vocdelete", method = RequestMethod.GET)
	public String vocdelete(Locale locale, Model model,HttpServletRequest req) {
		vocviewcontroller.voccontent(req);
		return "vocdelete";
	}
	
	@RequestMapping(value = "vocdeleteok", method = RequestMethod.POST)
	public String deleteok(HttpServletRequest req) {
		String VOCID = req.getParameter("DELETEVOCID");

		vocservice.deletevocfile(VOCID);
		vocservice.deletevoccontent(VOCID);

		return vocviewcontroller.voclist(req);
	}
}
