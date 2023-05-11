package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CompanyVO;
import com.kosmo.soribook.domain.WriterVO;

@Repository("bookMGDAO")
public class BookMGDAOImpl implements BookMGDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public List<WriterVO> getWriterList(WriterVO vo){
		List<WriterVO> list = mybatis.selectList("BookMGMapper.getWriterList");
		return list;
	}
	
	public List<CompanyVO> getCompanyList(CompanyVO vo){
		List<CompanyVO> list = mybatis.selectList("BookMGMapper.getCompanyList");
		return list;
	}
	
	public void insertBook(BookVO vo) {
		mybatis.selectList("BookMGMapper.insertBook", vo);
		
	}
	
	public WriterVO getSelectedWriter(WriterVO vo) {
		return mybatis.selectOne("BookMGMapper.getSelectedWriter", vo);

	}
	
	public CompanyVO getSelectedCompany(CompanyVO vo) {
		return mybatis.selectOne("BookMGMapper.getSelectedCompany", vo);
	}
	
	public List<BookVO> getSelectedCategoryBookList(BookVO vo){
		List<BookVO> list = mybatis.selectList("BookMGMapper.getSelectedCategoryBookList", vo);
		return list;
	}
	
	public void writerInsert(WriterVO vo) {
		mybatis.insert("BookMGMapper.writerInsert", vo);
	} 
	
	public void companyInsert(CompanyVO vo) {

		mybatis.insert("BookMGMapper.companyInsert", vo);
	}
	
	public BookVO getBook(BookVO vo) {
		return mybatis.selectOne("BookMGMapper.getBook", vo);
	}
	
	public void deleteBook(BookVO vo) {
		mybatis.delete("BookMGMapper.deleteBook", vo);
	}
	
	public void updateBook(BookVO vo) {

		mybatis.update("BookMGMapper.updateBook", vo);
	}

	
}
