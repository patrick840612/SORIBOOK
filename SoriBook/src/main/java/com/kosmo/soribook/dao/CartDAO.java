package com.kosmo.soribook.dao;

import java.util.List;

import com.kosmo.soribook.domain.CartVO;

public interface CartDAO {

	public void insertCart(CartVO vo);
	public List<CartVO> selectCart(CartVO vo);
	public void cartListDelete(CartVO vo);
	
	
}
