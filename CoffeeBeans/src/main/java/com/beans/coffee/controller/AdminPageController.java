package com.beans.coffee.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.CommentsDto;
import com.beans.coffee.dto.RegisterDto;
import com.beans.coffee.service.AdminPageService;

@Controller
public class AdminPageController {
	
	@Autowired
	AdminPageService adminpageservice;
	
	@RequestMapping(value="adminpage", method=RequestMethod.GET)
	public String AdminPage(HttpServletRequest req) {
		
		List<BbsDto> allboardlist = adminpageservice.allboardview();
		req.setAttribute("allboardlist", allboardlist);
		
		List<RegisterDto> allregister = adminpageservice.allregister();
		req.setAttribute("allregister", allregister);
		
		List<BbsDto> countemaillist = adminpageservice.countemaillist();
		req.setAttribute("countemaillist", countemaillist);
		
		List<BbsDto> countboard = adminpageservice.countboard();
		req.setAttribute("countboard", countboard);
		
		List<CommentsDto> countcomments = adminpageservice.countcomments();
		req.setAttribute("countcomments", countcomments);
		
		return "adminpage";
	}
}
