package com.beans.coffee.service;

import javax.servlet.http.HttpSession;

import com.beans.coffee.dto.RegisterDto;

public interface RegisterService {

	String register(RegisterDto registerdto);

	String login(String EMAIL, String PASSWORD, HttpSession session);

	String signupupdateok(RegisterDto registerdto);

	void deleteregister(RegisterDto registerdto);

	String idcheck(RegisterDto registerdto);

}
