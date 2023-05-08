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
		System.out.println("===> Mybatis getCategoryList() 호출");
		return mybatis.selectList("CategoryMGMapper.getCategoryList", vo);
	}
	
	public void insertCategory(CategoryVO vo) {
		System.out.println("===> Mybatis insertCategory() 호출");
		mybatis.insert("CategoryMGMapper.insertCategory", vo);
	}
	
	public void deleteCategory(CategoryVO vo) {
		System.out.println("===> Mybatis deleteCategory() 호출");
		mybatis.delete("CategoryMGMapper.deleteCategory", vo);
	}
	
	public void updateCategory(CategoryVO vo) {
		System.out.println("===> Mybatis updateCategory() 호출");
		mybatis.update("CategoryMGMapper.updateCategory", vo);
	}


}
