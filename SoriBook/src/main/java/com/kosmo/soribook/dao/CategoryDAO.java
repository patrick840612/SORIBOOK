package com.kosmo.soribook.dao;

import java.util.List;

import com.kosmo.soribook.Pagination;
import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CategoryVO;

public interface CategoryDAO {

	public List<CategoryVO> selectCategory() ;
	public List<CategoryVO> selectCategoryList(String categoryno);
	public int getBookListCnt();
	public List<BookVO> getBookList(Pagination pagination);
	public List<BookVO> getBookListForSub(Pagination pagination);
	
}
