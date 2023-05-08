package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.CategoryMGDAOImpl;
import com.kosmo.soribook.domain.CategoryVO;

@Service("categoryMGService")
public class CategoryMGServiceImpl implements CategoryMGService {

	@Autowired
	private CategoryMGDAOImpl categoryMGDAO;
	
	@Override
	public List<CategoryVO> getCategoryList(CategoryVO vo) {
		System.out.println("===> CategoryMGDAOImpl getCategoryList() 호출");
		return categoryMGDAO.getCategoryList(vo);
	}
	
	public void insertCategory(CategoryVO vo) {
		System.out.println("===> CategoryMGDAOImpl insertCategory() 호출");
		categoryMGDAO.insertCategory(vo);
	}
	
	public void deleteCategory(CategoryVO vo) {
		System.out.println("===> CategoryMGDAOImpl deleteCategory() 호출");
		categoryMGDAO.deleteCategory(vo);
	}
	
	public void updateCategory(CategoryVO vo) {
		System.out.println("===> CategoryMGDAOImpl updateCategory() 호출");
		categoryMGDAO.updateCategory(vo);
	}

}
