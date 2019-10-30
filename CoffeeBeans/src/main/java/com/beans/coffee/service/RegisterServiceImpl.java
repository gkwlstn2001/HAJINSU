package com.beans.coffee.service;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans.coffee.dao.RegisterDao;
import com.beans.coffee.dto.RegisterDto;

@Service
public class RegisterServiceImpl implements RegisterService {
	
	@Autowired
	RegisterDao registerdao;

	@Override
	public String register(RegisterDto registerdto) {
		
		String dbPass = registerdao.register(registerdto);
		String view = null;
		
		if (dbPass == null) {
			view ="signup";
		}else { 
			if(dbPass.equals("success")) {
					view ="index";
			} else {
				view = "signup";
			}
		}
		return view;
	}

	@Override
	public String login(String EMAIL, String PASSWORD, HttpSession session) {
		
		HashMap<String,String> hmForRegisterLogin = new HashMap<String, String>();
		hmForRegisterLogin.put("EMAIL", EMAIL);
		hmForRegisterLogin.put("PASSWORD", PASSWORD);
		
		String dbPass = registerdao.registerLogin(hmForRegisterLogin);
		String view = null;
		
		if (dbPass == null) {
			view ="login";
		} else {
			if(dbPass.equals(PASSWORD)) {
				session.setAttribute("SessionEMAIL", EMAIL);
				session.setAttribute("SessionPASSWORD", PASSWORD);
				view ="index";
			}else {
				view = "login";
			}
		}
		return view;
	}

	@Override
	public String signupupdateok(RegisterDto registerdto) {
		
		String dbPass = registerdao.signupupdateok(registerdto);
		String view = null;
		
		if (dbPass == null) {
			view ="signupupdate";
		}else { 
			if(dbPass.equals("success")) {
					view ="index";
			} else {
				view = "signupupdate";
			}
		}
		return view;
	}

	@Override
	public void deleteregister(RegisterDto registerdto) {
		registerdao.deleteregister(registerdto);
	}

	@Override
	public String idcheck(RegisterDto registerdto) {
		return registerdao.idcheck(registerdto);
	}
}
