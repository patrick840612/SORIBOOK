package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.CartVO;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertCart(CartVO vo) {
		mybatis.insert("CartMapper.insertCart",vo);
	}

	@Override
	public List<CartVO> selectCart(CartVO vo) {
		return mybatis.selectList("CartMapper.selectCart",vo);
	}

	@Override
	public void cartListDelete(CartVO vo) {
		mybatis.delete("CartMapper.cartListDelete",vo);
		
	}

}
