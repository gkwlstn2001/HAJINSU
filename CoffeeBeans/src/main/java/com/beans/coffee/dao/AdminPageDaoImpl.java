package com.beans.coffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.CommentsDto;
import com.beans.coffee.dto.RegisterDto;

@Repository
public class AdminPageDaoImpl implements AdminPageDao {
	
	final String nameSpace = "com.beans.coffee.dao.AdminPageDao";
	
	@Autowired
	SqlSession sqlsession;

	@Override
	public List<BbsDto> allboardview() {
		return sqlsession.selectList(nameSpace + ".allboardview");
	}

	@Override
	public List<RegisterDto> allregister() {
		return sqlsession.selectList(nameSpace + ".allregister");
	}

	@Override
	public List<BbsDto> countemaillist() {
		return sqlsession.selectList(nameSpace + ".countemaillist");
	}

	@Override
	public List<BbsDto> countboard() {
		return sqlsession.selectList(nameSpace + ".countboard");
	}

	@Override
	public List<CommentsDto> countcomments() {
		return sqlsession.selectList(nameSpace + ".countcomments");
	}

	@Override
	public List<BbsDto> mycontent(String EMAIL) {
		return sqlsession.selectList(nameSpace + ".mycontent", EMAIL);
	}

	@Override
	public RegisterDto myregisterinfo(String EMAIL) {
		return sqlsession.selectOne(nameSpace + ".myregisterinfo", EMAIL);
	}

	@Override
	public List<CommentsDto> mycomments(String EMAIL) {
		return sqlsession.selectList(nameSpace + ".mycomments", EMAIL);
	}
}
