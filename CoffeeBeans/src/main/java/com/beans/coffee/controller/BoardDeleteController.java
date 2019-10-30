package com.beans.coffee.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beans.coffee.service.BbsService;

@Controller
public class BoardDeleteController {

	@Autowired
	BbsService bbsservice;

	@Autowired
	BoardViewController boardviewcontroller;

	@Autowired
	AdminBoardViewController adminboardviewcontroller;

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(Locale locale, Model model, HttpServletRequest req) {
		boardviewcontroller.boardcontent(req);
		return "delete";
	}

	@RequestMapping(value = "deleteok", method = RequestMethod.POST)
	public String deleteok(HttpServletRequest req) {
		String BBSID = req.getParameter("DELETEBBSID");
		String Admin = req.getParameter("DELETEADMIN");

		bbsservice.deletefile(BBSID);
		bbsservice.deletemap(BBSID);
		bbsservice.deletecommmentsbbs(BBSID);
		bbsservice.deletecontent(BBSID);

		String page = null;

		if (Admin.contains("NORMAL")) {
			page = boardviewcontroller.board(req);
		} else {
			page = adminboardviewcontroller.board2(req);
		}
		return page;
	}
}