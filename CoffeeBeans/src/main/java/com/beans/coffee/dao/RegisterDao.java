package com.beans.coffee.dao;

import java.util.HashMap;

import com.beans.coffee.dto.RegisterDto;

public interface RegisterDao {

	String register(RegisterDto registerdto);

	String registerLogin(HashMap<String, String> hmForRegisterLogin);

	String signupupdateok(RegisterDto registerdto);

	void deleteregister(RegisterDto registerdto);

	String idcheck(RegisterDto registerdto);

}
