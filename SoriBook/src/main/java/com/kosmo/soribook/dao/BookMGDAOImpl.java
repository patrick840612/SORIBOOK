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
		System.out.println(list.toString());
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

		return mybatis.selectList("BookMGMapper.getSelectedCategoryBookList", vo);
	}
	
	public void writerInsert(WriterVO vo) {
		mybatis.insert("BookMGMapper.writerInsert", vo);
	} 
	
	public void companyInsert(CompanyVO vo) {
		System.out.println("==============================");
		System.out.println("==============================");
		mybatis.insert("BookMGMapper.companyInsert", vo);
	}

	
}
