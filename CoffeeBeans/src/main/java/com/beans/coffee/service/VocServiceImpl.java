package com.beans.coffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans.coffee.dao.VocDao;
import com.beans.coffee.dto.RegisterDto;
import com.beans.coffee.dto.VocDto;
import com.beans.coffee.dto.VocFileDto;

@Service
public class VocServiceImpl implements VocService {
	
	@Autowired
	VocDao vocdao;

	@Override
	public void vocwriteok(VocDto vocdto) {
		vocdao.vocwriteok(vocdto);
	}

	@Override
	public void vocfileok(VocFileDto vocfiledto) {
		vocdao.vocfileok(vocfiledto);
	}

	@Override
	public List<VocDto> vocview() {
		return vocdao.vocview();
	}

	@Override
	public List<VocFileDto> vocfileview2() {
		return vocdao.vocfileview2();
	}

	@Override
	public void vocviewcountup(String VOCID) {
		vocdao.vocviewcountup(VOCID);
	}

	@Override
	public VocDto voc(String VOCID) {
		return vocdao.voc(VOCID);
	}

	@Override
	public VocFileDto vocfile(String VOCID) {
		return vocdao.vocfile(VOCID);
	}

	@Override
	public void vocwriteupdateok(VocDto vocdto) {
		vocdao.vocwriteupdateok(vocdto);
	}

	@Override
	public void vocfileupdateok(VocFileDto vocfiledto) {
		vocdao.vocfileupdateok(vocfiledto);
	}

	@Override
	public void deletevoccontent(String VOCID) {
		vocdao.deletevoccontent(VOCID);
	}

	@Override
	public void deletevocfile(String VOCID) {
		vocdao.deletevocfile(VOCID);
	}

	@Override
	public void deletefile(RegisterDto registerdto) {
		vocdao.deletefile(registerdto);
	}

	@Override
	public void deletevoc(RegisterDto registerdto) {
		vocdao.deletevoc(registerdto);
	}
	
}
