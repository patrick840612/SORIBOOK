package com.kosmo.soribook.dao;

import java.util.List;

import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CompanyVO;
import com.kosmo.soribook.domain.WriterVO;


public interface BookMGDAO {

	public List<WriterVO> getWriterList(WriterVO vo);
	public List<CompanyVO> getCompanyList(CompanyVO vo);
	public void insertBook(BookVO vo);
	public WriterVO getSelectedWriter(WriterVO vo);
	public CompanyVO getSelectedCompany(CompanyVO vo);
	public List<BookVO> getSelectedCategoryBookList(BookVO vo);
	public void writerInsert(WriterVO vo) ;
	public void companyInsert(CompanyVO vo);
	public BookVO getBook(BookVO vo);
	public void deleteBook(BookVO vo);
	public void updateBook(BookVO vo);
	
}
