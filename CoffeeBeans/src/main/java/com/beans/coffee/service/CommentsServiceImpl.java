package com.beans.coffee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans.coffee.dao.CommentsDao;
import com.beans.coffee.dto.CommentsDto;

@Service
public class CommentsServiceImpl implements CommentsService {
	
	@Autowired
	CommentsDao commentsdao;

	@Override
	public void commentswrite(CommentsDto commentsdto) {
		commentsdao.commentswrite(commentsdto);
	}

	@Override
	public List<CommentsDto> commentsview(CommentsDto commentsdto) {
		return commentsdao.commentsview(commentsdto);
	}

	@Override
	public void commentsupdate(CommentsDto commentsdto) {
		commentsdao.commentsupdate(commentsdto);
	}

	@Override
	public void commentsdeleteok(CommentsDto commentsdto) {
		commentsdao.commentsdeleteok(commentsdto);
	}
	
}
