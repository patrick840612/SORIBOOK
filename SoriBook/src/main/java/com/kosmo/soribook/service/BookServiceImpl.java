package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.dao.BookDAOImpl;
import com.kosmo.soribook.domain.BookVO;

@Repository("bookService")
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDAOImpl bookDAO;
	
	@Override
	public List<BookVO> selectBook() {
		System.out.println("===> BookDAOImpl selectBook() 호출");
		return bookDAO.selectBook();
	}
	
	@Override
	public List<BookVO> getBookDetail(String bookNo) {
		return bookDAO.getBookDetail(bookNo);
	}

	@Override
	public BookVO getBookDetail2(String bookNo) {
		return bookDAO.getBookDetail2(bookNo);
	}
	


	@Override
	public List<BookVO> getbookCnt(String bookNo) {

		return bookDAO.getbookCnt(bookNo);
	}
	
	public List<BookVO> getbookCnt2() {

		return bookDAO.getbookCnt2();
	}

	@Override
	public List<BookVO> selectSub() {
		System.out.println("===> BookDAOImpl selectSub() 호출");
		return bookDAO.selectSub();
	}

}
