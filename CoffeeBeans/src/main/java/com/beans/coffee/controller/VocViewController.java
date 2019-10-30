package com.beans.coffee.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beans.coffee.dto.VocDto;
import com.beans.coffee.dto.VocFileDto;
import com.beans.coffee.service.VocService;

@Controller
public class VocViewController {
	
	@Autowired
	VocService vocservice;
	
	@RequestMapping(value ="voclist", method = RequestMethod.GET)
	public String voclist(HttpServletRequest req) {
		List<VocDto> voclist = vocservice.vocview();

		if (voclist == null) {
			return "voclist";
		}
		
		List<VocFileDto> voclist2 = new ArrayList<VocFileDto>();

		voclist2 = vocservice.vocfileview2();

		req.setAttribute("voclist", voclist);
		req.setAttribute("voclist2", voclist2);
		
		return "voclist";
	}
	
	@RequestMapping(value ="voccontent", method =RequestMethod.GET)
	public String voccontent(HttpServletRequest req) {
		String VOCID = req.getParameter("vocid");
		vocservice.vocviewcountup(VOCID);

		VocDto vocdto = vocservice.voc(VOCID);
		req.setAttribute("vocdto", vocdto);
		
		VocFileDto vocfiledto = vocservice.vocfile(VOCID);
		req.setAttribute("vocfiledto", vocfiledto);

		return "voccontent";
	}
}
