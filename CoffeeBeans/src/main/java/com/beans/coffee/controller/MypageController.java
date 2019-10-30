package com.beans.coffee.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.CommentsDto;
import com.beans.coffee.dto.RegisterDto;
import com.beans.coffee.service.AdminPageService;

@Controller
public class MypageController {	
	
	@Autowired
	AdminPageService adminpageservice;
	
	@RequestMapping(value="mypage", method=RequestMethod.GET)
	public String mypage(HttpSession session,HttpServletRequest req) {
		String EMAIL = null;
		EMAIL = (String) session.getAttribute("SessionEMAIL");
		
		List<BbsDto> mycontent = adminpageservice.mycontent(EMAIL);
		if(mycontent != null) {
			req.setAttribute("mycontent", mycontent);
		} else {
			return "mypage";
		}
		RegisterDto myregisterinfo = adminpageservice.myregisterinfo(EMAIL);
		req.setAttribute("myregisterinfo", myregisterinfo);
		
		List<CommentsDto> mycomments = adminpageservice.mycomments(EMAIL);
		if(mycomments != null) {
			req.setAttribute("mycomments", mycomments);
		} else {
			return "mypage";
		}
		
		return "mypage";
	}
}
