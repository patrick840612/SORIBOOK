package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.Pagination;
import com.kosmo.soribook.dao.CategoryDAOImpl;
import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CategoryVO;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAOImpl categoryDAO;
	
	@Override
	public List<CategoryVO> selectCategory() {
		System.out.println("===> CategoryDAOImpl selectCategory() 호출");
		return categoryDAO.selectCategory();
	}

	@Override
	public List<CategoryVO> selectCategoryList(String categoryno) {
		System.out.println("===> CategoryDAOImpl selectCategoryList() 호출");
		return categoryDAO.selectCategoryList(categoryno);
	}

	@Override
	public int getBookListCnt() {
		return categoryDAO.getBookListCnt();
	}

	@Override
	public List<BookVO> getBookList(Pagination pagination){
		return categoryDAO.getBookList(pagination);
	}

	@Override
	public List<BookVO> getBookListForSub(Pagination pagination) {
		return categoryDAO.getBookListForSub(pagination);
		
	}



}
