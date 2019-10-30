package com.beans.coffee.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beans.coffee.dto.RegisterDto;

@Repository
public class RegisterDaoImpl implements RegisterDao {
	
	final String nameSpace = "com.beans.coffee.dao.RegisterDao";
	
	@Autowired
	private SqlSession sqlsession;

	@Override
	public String register(RegisterDto registerdto) {
		String pass = "";
		int result = sqlsession.insert(nameSpace+".RegisterAdd",registerdto);
		if(result==1) {
			pass = "success";
		} else {
			pass = null;
		}
		return pass;
	}

	@Override
	public String registerLogin(HashMap<String, String> hmForRegisterLogin) {
		return sqlsession.selectOne(nameSpace+".registerLogin", hmForRegisterLogin);
	}

	@Override
	public String signupupdateok(RegisterDto registerdto) {
		
		String pass = "";
		int result = sqlsession.insert(nameSpace+".signupupdateok",registerdto);
		if(result==1) {
			pass = "success";
		} else {
			pass = null;
		}
		return pass;
	}

	@Override
	public void deleteregister(RegisterDto registerdto) {
		sqlsession.delete(nameSpace + ".deleteregister", registerdto);
	}

	@Override
	public String idcheck(RegisterDto registerdto) {
		return sqlsession.selectOne(nameSpace + ".idcheck", registerdto);
	}
}
