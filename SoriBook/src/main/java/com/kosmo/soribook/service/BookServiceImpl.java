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
		System.out.println("===> CategoryDAOImpl selectCategory() 호출");
		return bookDAO.selectBook();
	}

}