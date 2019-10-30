package com.beans.coffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beans.coffee.dto.CommentsDto;
import com.beans.coffee.service.CommentsService;

@Controller
public class CommentsDeleteController {
	
	@Autowired
	CommentsService commentsservice;
	
	@RequestMapping(value="commentsdeleteok", method=RequestMethod.POST)
	@ResponseBody
	public String commentsdeleteok(CommentsDto commentsdto) {
		
		try {
			commentsservice.commentsdeleteok(commentsdto);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "success";
	}
	
}
