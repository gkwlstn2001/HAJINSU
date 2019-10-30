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

import com.beans.coffee.dto.VocDto;
import com.beans.coffee.dto.VocFileDto;
import com.beans.coffee.service.VocService;

@Controller
public class VocWriteController {
	
	@Autowired
	VocService vocservice;
	
	@Autowired
	VocViewController vocviewcontroller;
	
	@RequestMapping(value ="vocwrite", method = RequestMethod.GET)
	public String voc(Locale locale, Model model) {
		return "vocwrite";
	}
	
	@RequestMapping(value ="vocwriteok", method=RequestMethod.POST)
	public String vocwriteok(VocDto vocdto,VocFileDto vocfiledto,HttpServletRequest req,
			MultipartHttpServletRequest mRequest) throws Exception {
		
		vocservice.vocwriteok(vocdto);
		
		MultipartFile multipartfile = mRequest.getFile("VOC_FILE");

		String path = "F:/workspace_spring/UPLOAD/";

		String ORIGINALFILENAME = null;
		ORIGINALFILENAME = multipartfile.getOriginalFilename();

		String SAVEFILENAME = null;
		SAVEFILENAME = path + System.currentTimeMillis() + ORIGINALFILENAME;

		vocfiledto.setVOCORIGINALFILENAME(ORIGINALFILENAME);
		vocfiledto.setVOCSAVEFILENAME(SAVEFILENAME);

		try {
			multipartfile.transferTo(new File(SAVEFILENAME));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		vocservice.vocfileok(vocfiledto);
		
		return vocviewcontroller.voclist(req);
	}
}