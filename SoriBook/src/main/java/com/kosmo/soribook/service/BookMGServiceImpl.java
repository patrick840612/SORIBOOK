package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.dao.BookMGDAOImpl;
import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CompanyVO;
import com.kosmo.soribook.domain.WriterVO;

@Repository("bookMGService")
public class BookMGServiceImpl implements BookMGService {

	@Autowired
	private BookMGDAOImpl bookMGDAO;

	public List<WriterVO> getWriterList(WriterVO vo) {
		return bookMGDAO.getWriterList(vo);
	}
	
	public List<CompanyVO> getCompanyList(CompanyVO vo) {
		return bookMGDAO.getCompanyList(vo);
	}
	
	public void insertBook(BookVO vo) {
		bookMGDAO.insertBook(vo);
	}
	
	public WriterVO getSelectedWriter(WriterVO vo) {
		return bookMGDAO.getSelectedWriter(vo);
	}
	
	public CompanyVO getSelectedCompany(CompanyVO vo) {
		
		return bookMGDAO.getSelectedCompany(vo);
	}
	
	public List<BookVO> getSelectedCategoryBookList(BookVO vo){

		return bookMGDAO.getSelectedCategoryBookList(vo);
	}
	
	public void writerInsert(WriterVO vo) {
		bookMGDAO.writerInsert(vo);
	}
	
	public void companyInsert(CompanyVO vo) {
		bookMGDAO.companyInsert(vo);
	}
	
	public BookVO getBook(BookVO vo) {
		return bookMGDAO.getBook(vo);
	}
	
	public void deleteBook(BookVO vo) {
		bookMGDAO.deleteBook(vo);
	}
	
	public void updateBook(BookVO vo) {
		bookMGDAO.updateBook(vo);
	}

}
