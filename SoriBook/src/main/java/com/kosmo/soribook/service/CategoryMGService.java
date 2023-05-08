package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.domain.CategoryVO;

public interface CategoryMGService {

	public List<CategoryVO>  getCategoryList(CategoryVO vo);
	public void insertCategory(CategoryVO vo);
	public void deleteCategory(CategoryVO vo);
	public void updateCategory(CategoryVO vo);

}
