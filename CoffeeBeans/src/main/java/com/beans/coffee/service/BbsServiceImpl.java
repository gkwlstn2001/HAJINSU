package com.beans.coffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans.coffee.dao.BbsDao;
import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.BbsFileDto;
import com.beans.coffee.dto.CommentsDto;
import com.beans.coffee.dto.MapDto;
import com.beans.coffee.dto.RegisterDto;

@Service
public class BbsServiceImpl implements BbsService {

	@Autowired
	BbsDao bbsdao;

	int count = 0;
	int count2 = 0;

	@Override
	public void writeok(BbsDto bbsdto) {

		String dbPass = bbsdao.bbswriteok(bbsdto);
		String view = null;

		if (dbPass == null) {
			view = "write";
		} else if (dbPass.equals("success")) {

		} else {
			view = "write";
		}
	}

	@Override
	public String writeok2(BbsFileDto bbsfiledto) {
		
		String dbPass2 = bbsdao.bbsfilewriteok(bbsfiledto);
		
		count++;
		if (count >= 5) {
			count = 1;
		}

		String view = null;

		if (count == 4) {
			if (dbPass2 == null) {
				view = "write";
			} else if (dbPass2.equals("success")) {
				view = "board";
			} else {
				view = null;
			}
		}
		return view;
	}

	@Override
	public List<BbsDto> boardview() {
		return bbsdao.boardview();
	}

	@Override
	public BbsFileDto boardview2(BbsFileDto BBSID) {
		return bbsdao.boardview2(BBSID);
	}

	@Override
	public int viewcountup(String BBSID) {
		return bbsdao.viewcountup(BBSID);
	}

	@Override
	public BbsDto bbs(String BBSID) {
		return bbsdao.bbs(BBSID);
	}

	@Override
	public List<BbsFileDto> bbsfile(String BBSID) {
		return bbsdao.bbsfile(BBSID);
	}

	@Override
	public void updateok(BbsDto bbsdto) {
		
		String dbPass = bbsdao.bbsupdateok(bbsdto);
		String view = null;

		if (dbPass == null) {
			view = "update";
		} else if (dbPass.equals("success")) {

		} else {
			view = "update";
		}
	}

	@Override
	public String updateok2(BbsFileDto bbsfiledto) {
		
		String dbPass2 = bbsdao.bbsfileupdateok(bbsfiledto);

		count2++;
		if (count2 >= 5) {
			count2 = 1;
		}

		String view = null;

		if (count2 == 4) {
			if (dbPass2 == null) {
				view = "update";
			} else if (dbPass2.equals("success")) {
				view = "board";
			} else {
				view = null;
			}
		}
		return view;
	}

	@Override
	public void deletecontent(String BBSID) {
		bbsdao.deletecontent(BBSID);
		
	}

	@Override
	public void deletefile(String BBSID) {
		bbsdao.deletefile(BBSID);
	}

	@Override
	public List<BbsFileDto> selectbbsid() {
		return bbsdao.selectbbsid();
	}

	@Override
	public List<BbsDto> boardnoticeview() {
		return bbsdao.boardnoticeview();
	}

	@Override
	public List<BbsFileDto> selectnoticebbsid() {
		return bbsdao.selectnoticebbsid();
	}

	@Override
	public BbsFileDto boardnoticeview2(BbsFileDto BBSID) {
		return bbsdao.boardnoticeview2(BBSID);
	}

	@Override
	public BbsDto maxviewcountcontent() {
		return bbsdao.maxviewcountcontent();
	}

	@Override
	public BbsFileDto maxviewcountfile(String BBSID) {
		return bbsdao.maxviewcountfile(BBSID);
	}

	@Override
	public BbsDto recentcontent() {
		return bbsdao.recentcontent();
	}

	@Override
	public BbsFileDto recentfile(String BBSID) {
		return bbsdao.recentfile(BBSID);
	}

	@Override
	public void mapok(MapDto mapdto) {
		bbsdao.mapok(mapdto);
	}

	@Override
	public MapDto map(String BBSID) {
		return bbsdao.map(BBSID);
	}

	@Override
	public void mapok2(MapDto mapdto) {
		bbsdao.mapok2(mapdto);
	}

	@Override
	public void deletemap(String BBSID) {
		bbsdao.deletemap(BBSID);
	}

	@Override
	public List<MapDto> allmap() {
		return bbsdao.allmap();
	}

	@Override
	public void deletebbs(RegisterDto registerdto) {
		bbsdao.deletebbs(registerdto);
	}

	@Override
	public void deletefile(RegisterDto registerdto) {
		bbsdao.deletefile(registerdto);
	}

	@Override
	public void deletemap(RegisterDto registerdto) {
		bbsdao.deletemap(registerdto);
	}

	@Override
	public void deletecomments(RegisterDto registerdto) {
		bbsdao.deletecomments(registerdto);
	}

	@Override
	public List<BbsDto> boardsearch(BbsDto bbsdto) {
		return bbsdao.boardsearch(bbsdto);
	}

	@Override
	public BbsFileDto searchthumbnail(String BBSID) {
		return bbsdao.searchthumbnail(BBSID);
	}

	@Override
	public String Maxcountcomments() {
		return bbsdao.Maxcountcomments();
	}

	@Override
	public BbsDto MaxcountcommentsBbs(String BBSID) {
		return bbsdao.MaxcountcommentsBbs(BBSID);
	}

	@Override
	public BbsFileDto Maxcountcommentsfile(String BBSID) {
		return bbsdao.Maxcountcommentsfile(BBSID);
	}

	@Override
	public CommentsDto Countcomments(String BBSID) {
		return bbsdao.Countcomments(BBSID);
	}

	@Override
	public void deletecommmentsbbs(String BBSID) {
		bbsdao.deletecommmentsbbs(BBSID);
	}
}
