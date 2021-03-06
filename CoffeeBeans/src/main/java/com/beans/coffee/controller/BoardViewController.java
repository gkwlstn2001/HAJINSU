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
import com.beans.coffee.dto.MapDto;
import com.beans.coffee.service.BbsService;

@Controller
public class BoardViewController {

	@Autowired
	BbsService bbsservice;
	
	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String board(HttpServletRequest req) {
		List<BbsDto> list = bbsservice.boardview();

		if (list == null) {
			return "board";
		}

		List<BbsFileDto> listfilebbsid = bbsservice.selectbbsid();

		List<BbsFileDto> list2 = new ArrayList<BbsFileDto>();

		for (int i = 0; i < listfilebbsid.size(); i++) {
			BbsFileDto BBSID = listfilebbsid.get(i);
			BbsFileDto savefilename = bbsservice.boardview2(BBSID);
			list2.add(savefilename);
		}

		req.setAttribute("list", list);
		req.setAttribute("list2", list2);

		return "board";
	}

	@RequestMapping(value = "boardcontent", method = RequestMethod.GET)
	public String boardcontent(HttpServletRequest req) {
		String BBSID = req.getParameter("bbsid");
		bbsservice.viewcountup(BBSID);

		BbsDto bbsdto = bbsservice.bbs(BBSID);
		req.setAttribute("bbsdto", bbsdto);
		
		MapDto mapdto = bbsservice.map(BBSID);
		req.setAttribute("mapdto", mapdto);

		List<BbsFileDto> bbsfiledto = bbsservice.bbsfile(BBSID);
		req.setAttribute("bbsfiledto", bbsfiledto);

		return "boardcontent";
	}
}
