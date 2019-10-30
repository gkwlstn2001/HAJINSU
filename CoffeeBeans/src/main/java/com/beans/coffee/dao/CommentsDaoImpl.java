package com.beans.coffee.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beans.coffee.dto.CommentsDto;

@Repository
public class CommentsDaoImpl implements CommentsDao {
	
	final String nameSpace = "com.beans.coffee.dao.CommentsDao";
	
	@Autowired
	SqlSession sqlsession;

	@Override
	public void commentswrite(CommentsDto commentsdto) {
		sqlsession.insert(nameSpace + ".commentswrite", commentsdto);
	}

	@Override
	public List<CommentsDto> commentsview(CommentsDto commentsdto) {
		return sqlsession.selectList(nameSpace + ".commentsview", commentsdto);
	}

	@Override
	public void commentsupdate(CommentsDto commentsdto) {
		sqlsession.update(nameSpace + ".commentsupdate", commentsdto);
	}

	@Override
	public void commentsdeleteok(CommentsDto commentsdto) {
		sqlsession.delete(nameSpace + ".commentsdeleteok", commentsdto);
	}
	
}
