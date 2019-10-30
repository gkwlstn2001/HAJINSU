package com.beans.coffee.dao;

import java.util.List;

import com.beans.coffee.dto.CommentsDto;

public interface CommentsDao {

	void commentswrite(CommentsDto commentsdto);

	List<CommentsDto> commentsview(CommentsDto commentsdto);

	void commentsupdate(CommentsDto commentsdto);

	void commentsdeleteok(CommentsDto commentsdto);

}
