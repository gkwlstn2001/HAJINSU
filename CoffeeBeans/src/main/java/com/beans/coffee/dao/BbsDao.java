package com.beans.coffee.dao;

import java.util.List;

import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.BbsFileDto;
import com.beans.coffee.dto.CommentsDto;
import com.beans.coffee.dto.MapDto;
import com.beans.coffee.dto.RegisterDto;

public interface BbsDao {

	String bbswriteok(BbsDto bbsdto);

	String bbsfilewriteok(BbsFileDto bbsfiledto);

	List<BbsDto> boardview();

	BbsFileDto boardview2(BbsFileDto BBSID);

	int viewcountup(String BBSID);

	BbsDto bbs(String BBSID);

	List<BbsFileDto> bbsfile(String BBSID);

	String bbsupdateok(BbsDto bbsdto);

	String bbsfileupdateok(BbsFileDto bbsfiledto);

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
