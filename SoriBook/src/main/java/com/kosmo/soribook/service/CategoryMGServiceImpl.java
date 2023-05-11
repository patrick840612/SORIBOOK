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
		return categoryMGDAO.getCategoryList(vo);
	}
	
	public void insertCategory(CategoryVO vo) {
		categoryMGDAO.insertCategory(vo);
	}
	
	public void deleteCategory(CategoryVO vo) {
		categoryMGDAO.deleteCategory(vo);
	}
	
	public void updateCategory(CategoryVO vo) {
		categoryMGDAO.updateCategory(vo);
	}

}
