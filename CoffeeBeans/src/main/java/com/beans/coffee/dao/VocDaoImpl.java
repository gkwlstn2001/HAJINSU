package com.beans.coffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beans.coffee.dto.RegisterDto;
import com.beans.coffee.dto.VocDto;
import com.beans.coffee.dto.VocFileDto;

@Repository
public class VocDaoImpl implements VocDao {
	
	final String nameSpace = "com.beans.coffee.dao.VocDao";
	
	@Autowired
	SqlSession sqlsession;

	@Override
	public void vocwriteok(VocDto vocdto) {
		sqlsession.insert(nameSpace + ".vocwriteok", vocdto);
	}

	@Override
	public void vocfileok(VocFileDto vocfiledto) {
		sqlsession.insert(nameSpace + ".vocfileok", vocfiledto);
	}

	@Override
	public List<VocDto> vocview() {
		return sqlsession.selectList(nameSpace + ".vocview");
	}

	@Override
	public List<VocFileDto> vocfileview2() {
		return sqlsession.selectList(nameSpace + ".vocfileview2");
	}

	@Override
	public void vocviewcountup(String VOCID) {
		sqlsession.update(nameSpace + ".vocviewcountup",VOCID);
	}

	@Override
	public VocDto voc(String VOCID) {
		return sqlsession.selectOne(nameSpace + ".voc", VOCID);
	}

	@Override
	public VocFileDto vocfile(String VOCID) {
		return sqlsession.selectOne(nameSpace + ".vocfile", VOCID);
	}

	@Override
	public void vocwriteupdateok(VocDto vocdto) {
		sqlsession.insert(nameSpace + ".vocwriteupdateok", vocdto);
	}

	@Override
	public void vocfileupdateok(VocFileDto vocfiledto) {
		sqlsession.update(nameSpace + ".vocfileupdateok", vocfiledto);
	}

	@Override
	public void deletevoccontent(String VOCID) {
		sqlsession.delete(nameSpace + ".deletevoccontent", VOCID);
	}

	@Override
	public void deletevocfile(String VOCID) {
		sqlsession.delete(nameSpace + ".deletevocfile", VOCID);
	}

	@Override
	public void deletefile(RegisterDto registerdto) {
		sqlsession.delete(nameSpace + ".deletefile", registerdto);
	}

	@Override
	public void deletevoc(RegisterDto registerdto) {
		sqlsession.delete(nameSpace + ".deletevoc", registerdto);
	}
	
}
