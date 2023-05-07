package com.kosmo.soribook.dao;

import java.util.List;

import com.kosmo.soribook.domain.BookVO;


public interface BookDAO {

	public List<BookVO> selectBook() ;
	
}
