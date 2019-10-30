package com.beans.coffee.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beans.coffee.dto.MapDto;
import com.beans.coffee.service.BbsService;

@Controller
public class MapController {
	
	@Autowired
	BbsService bbsservice;

	@RequestMapping(value ="map", method = RequestMethod.GET)
	public String Map(Locale locale, Model model,HttpServletRequest req) {
		List<MapDto> maplist = bbsservice.allmap();
		req.setAttribute("maplist", maplist);
		
		return "map";
	}
}
