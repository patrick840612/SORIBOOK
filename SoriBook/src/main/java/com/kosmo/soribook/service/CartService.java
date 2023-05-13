package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.domain.CartVO;

public interface CartService {

	public void insertCart(CartVO vo);
	public List<CartVO> selectCart(CartVO vo);
	public void cartListDelete(CartVO vo);
}
