package com.kosmo.soribook.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.soribook.domain.CartVO;
import com.kosmo.soribook.domain.UserInfoVO;
import com.kosmo.soribook.service.CartServiceImpl;

@Controller
public class CartController {
	
	@Autowired
	CartServiceImpl cartService;
	
	@RequestMapping("addCart.do")
	@ResponseBody
	public void addCart(@ModelAttribute("vo") CartVO vo) {
		System.out.println(vo);
		cartService.insertCart(vo);	
	}
	
	@RequestMapping("Cart.do")
	public void selectCart(HttpServletRequest request,Model m) throws Exception  {
		
		  HttpSession session = request.getSession();
		  UserInfoVO vo =(UserInfoVO)session.getAttribute("id");
		  CartVO cartvo = new CartVO();
		  cartvo.setUserTel(vo.getUserTel());
		  List<CartVO> list = cartService.selectCart(cartvo);
		  m.addAttribute("cartList",list);
		 
	}
	
	@RequestMapping("cartListDelete.do")
	@ResponseBody
	public void cartListDelete(CartVO vo) {
		cartService.cartListDelete(vo);
	}
	
	@RequestMapping(value ="/cartListAll.do")
	@ResponseBody
	public Map<String,Object> cartListAll(HttpServletRequest request,CartVO cartvo){
		HttpSession session = request.getSession();
		UserInfoVO vo = (UserInfoVO)session.getAttribute("id");	
		cartvo.setUserTel(vo.getUserTel());
		
		List<CartVO> list = cartService.selectCart(cartvo);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("result", true);
		map.put("data", list);
		map.put("size", list.size());
		return map;
	}
}
