package com.beans.coffee.service;

import java.util.List;

import com.beans.coffee.dto.CommentsDto;

public interface CommentsService {

	void commentswrite(CommentsDto commentsdto);

	List<CommentsDto> commentsview(CommentsDto commentsdto);

	void commentsupdate(CommentsDto commentsdto);

	void commentsdeleteok(CommentsDto commentsdto);

}
