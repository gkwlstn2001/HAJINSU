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
public class AdminBoardViewController {

	@Autowired
	BbsService bbsservice;

	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String board2(HttpServletRequest req) {
		List<BbsDto> list = bbsservice.boardnoticeview();

		if (list == null) {
			return "notice";
		}

		List<BbsFileDto> listfilenoticebbsid = bbsservice.selectnoticebbsid();

		List<BbsFileDto> list2 = new ArrayList<BbsFileDto>();

		for (int i = 0; i < listfilenoticebbsid.size(); i++) {
			BbsFileDto BBSID = listfilenoticebbsid.get(i);
			BbsFileDto savefilename = bbsservice.boardnoticeview2(BBSID);
			list2.add(savefilename);
		}

		req.setAttribute("nlist", list);
		req.setAttribute("nlist2", list2);

		return "notice";
	}
}
