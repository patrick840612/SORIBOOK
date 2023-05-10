package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CompanyVO;
import com.kosmo.soribook.domain.WriterVO;

public interface BookMGService {

	public List<WriterVO> getWriterList(WriterVO vo);
	public List<CompanyVO> getCompanyList(CompanyVO vo);
	public void insertBook(BookVO vo);
	public WriterVO getSelectedWriter(WriterVO vo);
	public CompanyVO getSelectedCompany(CompanyVO vo);
	public List<BookVO> getSelectedCategoryBookList(BookVO vo);
	public void writerInsert(WriterVO vo);
	public void companyInsert(CompanyVO vo);


}
