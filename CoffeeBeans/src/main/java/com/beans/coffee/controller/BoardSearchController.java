package com.beans.coffee.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.BbsFileDto;
import com.beans.coffee.service.BbsService;

@Controller
public class BoardSearchController {
	
	@Autowired
	BbsService bbsservice;
	
	@RequestMapping(value="boardsearch", method=RequestMethod.GET)
	public String boardsearch(BbsDto bbsdto,HttpServletRequest req) {
		
		String Searchkey = null;
		Searchkey = req.getParameter("SEARCHKEY");
		bbsdto.setVIEWSCOUNT(Searchkey);
		
		List<BbsDto> list = bbsservice.boardsearch(bbsdto);
		
		List<BbsFileDto> list2 = new ArrayList<BbsFileDto>();
		
		for (int i = 0; i < list.size(); i++) {
			String BBSID = list.get(i).getBBSID();
			BbsFileDto searchthumbnail = bbsservice.searchthumbnail(BBSID);
			list2.add(searchthumbnail);
		}
		
		req.setAttribute("list", list);
		req.setAttribute("list2", list2);
		
		return "board";
	}
}
