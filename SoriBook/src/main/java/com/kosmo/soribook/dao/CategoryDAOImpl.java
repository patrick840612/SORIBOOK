package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
