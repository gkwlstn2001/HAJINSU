package com.beans.coffee.dao;

import java.util.List;

import com.beans.coffee.dto.BbsDto;
import com.beans.coffee.dto.CommentsDto;
import com.beans.coffee.dto.RegisterDto;

public interface AdminPageDao {

	List<BbsDto> allboardview();
	
	List<RegisterDto> allregister();

	List<BbsDto> countemaillist();

	List<BbsDto> countboard();

	List<CommentsDto> countcomments();

	List<BbsDto> mycontent(String EMAIL);

	RegisterDto myregisterinfo(String EMAIL);

	List<CommentsDto> mycomments(String EMAIL);

}
