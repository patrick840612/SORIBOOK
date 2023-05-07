package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.Pagination;
import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CategoryVO;

public interface CategoryService {

	List<CategoryVO>  selectCategory();
	List<CategoryVO> selectCategoryList(String categoryno);
	public int getBookListCnt();
	public List<BookVO> getBookList(Pagination pagination);
}
