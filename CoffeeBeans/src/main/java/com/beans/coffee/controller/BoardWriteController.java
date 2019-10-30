package com.beans.coffee.controller;

import java.io.File;
import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.BbsFileDto;
import com.beans.coffee.dto.MapDto;
import com.beans.coffee.service.BbsService;

@Controller
public class BoardWriteController {

	@Autowired
	BbsService bbsservice;

	@Autowired
	BoardViewController boardviewcontroller;

	@Autowired
	AdminBoardViewController adminboardviewcontroller;

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write(Locale locale, Model model) {
		return "write";
	}

	@RequestMapping(value = "writeok", method = RequestMethod.POST)
	public String writeok(BbsDto bbsdto, BbsFileDto bbsfiledto, HttpServletRequest req,
			MultipartHttpServletRequest mRequest) throws Exception {

		bbsservice.writeok(bbsdto);
		
		MapDto mapdto = new MapDto();
		String mapinfo = req.getParameter("LATITUDE");
		String mapinfo2 = req.getParameter("LONGITUDE");

		mapdto.setLATITUDE(mapinfo);
		mapdto.setLONGITUDE(mapinfo2);
		
		bbsservice.mapok(mapdto);
		
		String result = "";

		for (int i = 1; i <= 4; i++) {

			MultipartFile multipartfile[] = new MultipartFile[100];
			multipartfile[i] = mRequest.getFile("BBS_FILE" + i);

			String path = "F:/workspace_spring/UPLOAD/";
			
			String ORIGINALFILENAME[] = new String[100];
			ORIGINALFILENAME[i] = i + multipartfile[i].getOriginalFilename();

			String SAVEFILENAME[] = new String[100];
			SAVEFILENAME[i] = path + i + System.currentTimeMillis() + ORIGINALFILENAME[i];

			bbsfiledto.setORIGINALFILENAME(ORIGINALFILENAME[i]);
			bbsfiledto.setSAVEFILENAME(SAVEFILENAME[i]);

			try {
				multipartfile[i].transferTo(new File(SAVEFILENAME[i]));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			result = bbsservice.writeok2(bbsfiledto);
			if (result != "board") {
				continue;
			}
		}
		String Admin = bbsdto.getADMIN();
		String page = null;

		if (Admin.contains("NORMAL")) {
			page = boardviewcontroller.board(req);
		} else {
			page = adminboardviewcontroller.board2(req);
		}
		return page;
	}
}
