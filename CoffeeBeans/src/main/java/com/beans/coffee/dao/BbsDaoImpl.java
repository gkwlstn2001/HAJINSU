package com.beans.coffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.BbsFileDto;
import com.beans.coffee.dto.CommentsDto;
import com.beans.coffee.dto.MapDto;
import com.beans.coffee.dto.RegisterDto;

@Repository
public class BbsDaoImpl implements BbsDao {

	final String nameSpace = "com.beans.coffee.dao.BbsDao";

	@Autowired
	private SqlSession sqlsession;

	@Override
	public String bbswriteok(BbsDto bbsdto) {
		String pass = "";
		
		int result = sqlsession.insert(nameSpace + ".bbsdtoAdd", bbsdto);
		
		if (result == 1) {
			pass = "success";
		} else {
			pass = null;
		}
		return pass;
	}

	@Override
	public String bbsfilewriteok(BbsFileDto bbsfiledto) {
		String pass = "";
		
		int result = sqlsession.insert(nameSpace + ".bbsfiledtoAdd", bbsfiledto);
		
		if (result == 1) {
				pass = "success";
		} else {
				pass = null;
		}	
		return pass;
	}

	@Override
	public List<BbsDto> boardview() {
		return sqlsession.selectList(nameSpace + ".bbsview");
	}

	@Override
	public BbsFileDto boardview2(BbsFileDto BBSID) {
		return sqlsession.selectOne(nameSpace + ".bbsview2",BBSID);
	}

	@Override
	public int viewcountup(String BBSID) {
		return sqlsession.update(nameSpace + ".viewcountup",BBSID);
	}

	@Override
	public BbsDto bbs(String BBSID) {
		return sqlsession.selectOne(nameSpace + ".boardview",BBSID);
	}

	@Override
	public List<BbsFileDto> bbsfile(String BBSID) {
		return sqlsession.selectList(nameSpace + ".boardfileview",BBSID);
	}

	@Override
	public String bbsupdateok(BbsDto bbsdto) {
		String pass = "";
		
		int result = sqlsession.update(nameSpace + ".bbsdtoUpdate", bbsdto);
		if (result == 1) {
			pass = "success";
		} else {
			pass = null;
		}
		return pass;
	}

	@Override
	public String bbsfileupdateok(BbsFileDto bbsfiledto) {
		String pass = "";
		
		int result = sqlsession.update(nameSpace + ".bbsfiledtoUpdate", bbsfiledto);
		if (result == 1) {
				pass = "success";
		} else {
				pass = null;
		}	
		return pass;
	}

	@Override
	public void deletecontent(String BBSID) {
		int result = sqlsession.delete(nameSpace + ".deletecontent",BBSID);
	}

	@Override
	public void deletefile(String BBSID) {
		int result = sqlsession.delete(nameSpace + ".deletefile",BBSID);
	}

	@Override
	public List<BbsFileDto> selectbbsid() {
		return sqlsession.selectList(nameSpace + ".selectbbsid");
	}

	@Override
	public List<BbsDto> boardnoticeview() {
		return sqlsession.selectList(nameSpace + ".bbsnoticeview");
	}

	@Override
	public List<BbsFileDto> selectnoticebbsid() {
		return sqlsession.selectList(nameSpace + ".selectnoticebbsid");
	}

	@Override
	public BbsFileDto boardnoticeview2(BbsFileDto BBSID) {
		return sqlsession.selectOne(nameSpace + ".bbsnoticeview2",BBSID);
	}

	@Override
	public BbsDto maxviewcountcontent() {
		return sqlsession.selectOne(nameSpace + ".maxviewcountcontent");
	}

	@Override
	public BbsFileDto maxviewcountfile(String BBSID) {
		return sqlsession.selectOne(nameSpace + ".maxviewcountfile", BBSID);
	}

	@Override
	public BbsDto recentcontent() {
		return sqlsession.selectOne(nameSpace + ".recentcontent");
	}

	@Override
	public BbsFileDto recentfile(String BBSID) {
		return sqlsession.selectOne(nameSpace + ".recentfile", BBSID);
	}

	@Override
	public void mapok(MapDto mapdto) {
		sqlsession.insert(nameSpace + ".mapok", mapdto);
	}

	@Override
	public MapDto map(String BBSID) {
		return sqlsession.selectOne(nameSpace + ".map",BBSID);
	}

	@Override
	public void mapok2(MapDto mapdto) {
		sqlsession.update(nameSpace + ".mapok2", mapdto);
	}

	@Override
	public void deletemap(String BBSID) {
		sqlsession.delete(nameSpace + ".deletemap", BBSID);
	}

	@Override
	public List<MapDto> allmap() {
		return sqlsession.selectList(nameSpace + ".allmap");
	}

	@Override
	public void deletebbs(RegisterDto registerdto) {
		sqlsession.delete(nameSpace + ".deletebbs", registerdto);
	}

	@Override
	public void deletefile(RegisterDto registerdto) {
		sqlsession.delete(nameSpace + ".deletefiles", registerdto);
	}

	@Override
	public void deletemap(RegisterDto registerdto) {
		sqlsession.delete(nameSpace + ".deletemaps", registerdto);
	}

	@Override
	public void deletecomments(RegisterDto registerdto) {
		sqlsession.delete(nameSpace + ".deletecomments", registerdto);
	}

	@Override
	public List<BbsDto> boardsearch(BbsDto bbsdto) {
		return sqlsession.selectList(nameSpace + ".boardsearch", bbsdto);
	}

	@Override
	public BbsFileDto searchthumbnail(String BBSID) {
		return sqlsession.selectOne(nameSpace + ".searchthumbnail", BBSID);
	}

	@Override
	public String Maxcountcomments() {
		return sqlsession.selectOne(nameSpace + ".Maxcountcomments");
	}

	@Override
	public BbsDto MaxcountcommentsBbs(String BBSID) {
		return sqlsession.selectOne(nameSpace + ".MaxcountcommentsBbs", BBSID);
	}

	@Override
	public BbsFileDto Maxcountcommentsfile(String BBSID) {
		return sqlsession.selectOne(nameSpace + ".Maxcountcommentsfile", BBSID);
	}

	@Override
	public CommentsDto Countcomments(String BBSID) {
		return sqlsession.selectOne(nameSpace + ".Countcomments", BBSID);
	}

	@Override
	public void deletecommmentsbbs(String BBSID) {
		sqlsession.delete(nameSpace + ".deletecommmentsbbs", BBSID);
	}
}
