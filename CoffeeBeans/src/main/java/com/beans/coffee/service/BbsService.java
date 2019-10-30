package com.beans.coffee.service;

import java.util.List;

import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.BbsFileDto;
import com.beans.coffee.dto.CommentsDto;
import com.beans.coffee.dto.MapDto;
import com.beans.coffee.dto.RegisterDto;

public interface BbsService {

	void writeok(BbsDto bbsdto);

	String writeok2(BbsFileDto bbsfiledto);

	List<BbsDto> boardview();

	BbsFileDto boardview2(BbsFileDto BBSID);

	int viewcountup(String BBSID);

	BbsDto bbs(String BBSID);

	List<BbsFileDto> bbsfile(String BBSID);

	void updateok(BbsDto bbsdto);

	String updateok2(BbsFileDto bbsfiledto);

	void deletecontent(String BBSID);

	void deletefile(String BBSID);

	List<BbsFileDto> selectbbsid();

	List<BbsDto> boardnoticeview();
	
	List<BbsFileDto> selectnoticebbsid();

	BbsFileDto boardnoticeview2(BbsFileDto BBSID);

	BbsDto maxviewcountcontent();

	BbsFileDto maxviewcountfile(String BBSID);

	BbsDto recentcontent();

	BbsFileDto recentfile(String BBSID);

	void mapok(MapDto mapdto);

	MapDto map(String BBSID);

	void mapok2(MapDto mapdto);

	void deletemap(String BBSID);

	List<MapDto> allmap();

	void deletebbs(RegisterDto registerdto);

	void deletefile(RegisterDto registerdto);

	void deletemap(RegisterDto registerdto);

	void deletecomments(RegisterDto registerdto);

	List<BbsDto> boardsearch(BbsDto bbsdto);

	BbsFileDto searchthumbnail(String BBSID);

	String Maxcountcomments();

	BbsDto MaxcountcommentsBbs(String BBSID);

	BbsFileDto Maxcountcommentsfile(String BBSID);

	CommentsDto Countcomments(String BBSID);

	void deletecommmentsbbs(String BBSID);

}
