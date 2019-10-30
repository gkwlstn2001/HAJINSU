package com.beans.coffee.dao;

import java.util.List;

import com.beans.coffee.dto.RegisterDto;
import com.beans.coffee.dto.VocDto;
import com.beans.coffee.dto.VocFileDto;

public interface VocDao {

	void vocwriteok(VocDto vocdto);

	void vocfileok(VocFileDto vocfiledto);

	List<VocDto> vocview();

	List<VocFileDto> vocfileview2();

	void vocviewcountup(String VOCID);

	VocDto voc(String VOCID);

	VocFileDto vocfile(String VOCID);

	void vocwriteupdateok(VocDto vocdto);

	void vocfileupdateok(VocFileDto vocfiledto);

	void deletevoccontent(String VOCID);

	void deletevocfile(String VOCID);

	void deletefile(RegisterDto registerdto);

	void deletevoc(RegisterDto registerdto);

}
