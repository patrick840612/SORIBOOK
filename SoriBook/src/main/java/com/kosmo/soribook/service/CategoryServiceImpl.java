package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.CategoryDAOImpl;
import com.kosmo.soribook.domain.CategoryVO;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAOImpl categoryDAO;
	
	@Override
	public List<CategoryVO> selectCategory(CategoryVO vo) {
		categoryDAO.selectCategory(vo);
		return null;
	}

}
