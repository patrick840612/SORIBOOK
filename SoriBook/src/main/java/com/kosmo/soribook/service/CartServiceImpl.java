package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.CartDAOImpl;
import com.kosmo.soribook.domain.CartVO;

@Service("cartService")
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartDAOImpl cartDAO;
	
	@Override
	public void insertCart(CartVO vo) {
		cartDAO.insertCart(vo);
	}

	@Override
	public List<CartVO> selectCart(CartVO vo) {
		return cartDAO.selectCart(vo);
	}

	@Override
	public void cartListDelete(CartVO vo) {
		cartDAO.cartListDelete(vo);
		
	}



}
