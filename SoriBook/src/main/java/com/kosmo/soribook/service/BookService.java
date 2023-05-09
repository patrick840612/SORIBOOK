package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.domain.BookVO;

public interface BookService {

	public List<BookVO> selectBook();
	public List<BookVO> getBookDetail(String bookNo);
	public BookVO getBookDetail2(String bookNo);
	public List<BookVO> getbookCnt(String bookNo);
}
