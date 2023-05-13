package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.Pagination;
import com.kosmo.soribook.domain.BookVO;

public interface BookService {

	public List<BookVO> selectBook(String bookno);
	public List<BookVO> getBookDetail(String bookNo);
	public BookVO getBookDetail2(String bookNo);
	public List<BookVO> getbookCnt(String bookNo);
	public List<BookVO> getbookCnt2();
	public List<BookVO> selectSub();
	public List<BookVO> selectTop100(Pagination pagination);
	public List<BookVO> selectNewestBook();
	public List<BookVO> SearchBookList(BookVO vo); 
	public BookVO viewer(String bookno);
}
