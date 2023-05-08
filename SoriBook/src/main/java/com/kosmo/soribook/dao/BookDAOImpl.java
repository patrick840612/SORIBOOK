package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.BookVO;

@Repository("bookDAO")
public class BookDAOImpl implements BookDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<BookVO> selectBook() {
		System.out.println("===> Mybatis selectCategory() 호출");
		return mybatis.selectList("BookMapper.selectBook");
	}
	@Override
	public List<BookVO> getBookDetail(String bookNo) {
		return mybatis.selectList("BookMapper.getBookDetail", bookNo);
	}
}
