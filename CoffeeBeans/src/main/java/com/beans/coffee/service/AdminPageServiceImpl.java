package com.beans.coffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans.coffee.dao.AdminPageDao;
import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.CommentsDto;
import com.beans.coffee.dto.RegisterDto;

@Service
public class AdminPageServiceImpl implements AdminPageService {
	
	@Autowired
	AdminPageDao adminpagedao;

	@Override
	public List<BbsDto> allboardview() {
		return adminpagedao.allboardview();
	}

	@Override
	public List<RegisterDto> allregister() {
		return adminpagedao.allregister();
	}

	@Override
	public List<BbsDto> countemaillist() {
		return adminpagedao.countemaillist();
	}

	@Override
	public List<BbsDto> countboard() {
		return adminpagedao.countboard();
	}

	@Override
	public List<CommentsDto> countcomments() {
		return adminpagedao.countcomments();
	}

	@Override
	public List<BbsDto> mycontent(String EMAIL) {
		return adminpagedao.mycontent(EMAIL);
	}

	@Override
	public RegisterDto myregisterinfo(String EMAIL) {
		return adminpagedao.myregisterinfo(EMAIL);
	}

	@Override
	public List<CommentsDto> mycomments(String EMAIL) {
		return adminpagedao.mycomments(EMAIL);
	}
	
}
