package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.Pagination;
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
	@Override
	public BookVO getBookDetail2(String bookNo) {
		return mybatis.selectOne("BookMapper.getBookDetail2", bookNo);
	}
	@Override
	public List<BookVO> getbookCnt(String bookNo) {
		return mybatis.selectList("BookMapper.getbookCnt",bookNo);
	}
	
	public List<BookVO> getbookCnt2() {
		return mybatis.selectList("BookMapper.getbookCnt2");
	}
	
	
	public List<BookVO> selectSub() {
		System.out.println("===> Mybatis selectSub() 호출");
		return mybatis.selectList("BookMapper.selectSub");
	}
	@Override
	public List<BookVO> selectTop100(Pagination pagination) {
		return mybatis.selectList("BookMapper.selectTop100");
	}
	@Override
	public List<BookVO> selectNewestBook() {
		return mybatis.selectList("BookMapper.selectNewestBook");
	}
	
	
}
