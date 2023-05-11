package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.CategoryVO;

@Repository("categoryMGDAO")
public class CategoryMGDAOImpl implements CategoryMGDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<CategoryVO> getCategoryList(CategoryVO vo) {
		return mybatis.selectList("CategoryMGMapper.getCategoryList", vo);
	}
	
	public void insertCategory(CategoryVO vo) {
		mybatis.insert("CategoryMGMapper.insertCategory", vo);
	}
	
	public void deleteCategory(CategoryVO vo) {
		mybatis.delete("CategoryMGMapper.deleteCategory", vo);
	}
	
	public void updateCategory(CategoryVO vo) {
		mybatis.update("CategoryMGMapper.updateCategory", vo);
	}


}
