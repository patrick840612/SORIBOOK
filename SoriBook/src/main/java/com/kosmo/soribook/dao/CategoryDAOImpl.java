package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.Pagination;
import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CategoryVO;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<CategoryVO> selectCategory() {
			System.out.println("===> Mybatis selectCategory() 호출");
			return mybatis.selectList("CategoryMapper.selectCategory");
	}

	@Override
	public List<CategoryVO> selectCategoryList(String categoryno) {
			System.out.println("===> Mybatis  selectCategoryList() 호출");
			return mybatis.selectList("CategoryMapper.selectCategoryList", categoryno);

	}

	@Override
	public int getBookListCnt() {
		
		return mybatis.selectOne("CategoryMapper.getBookListCnt");
	}

	@Override
	public List<BookVO> getBookList(Pagination pagination) {
		
		return mybatis.selectList("CategoryMapper.getBookList", pagination);
	}





}
