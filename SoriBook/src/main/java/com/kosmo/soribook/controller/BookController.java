package com.kosmo.soribook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.domain.UserInfoVO;
import com.kosmo.soribook.service.BookServiceImpl;
import com.kosmo.soribook.service.CategoryServiceImpl;
import com.kosmo.soribook.service.UserInfoServiceImpl;

@Controller
public class BookController {

	@Autowired
	BookServiceImpl bookService;
	

	@Autowired
	CategoryServiceImpl categoryService;
	
	@Autowired
	UserInfoServiceImpl userInfoService;
	

	@RequestMapping("myPage.do")
	public void selectBook(Model m) {
		System.out.println("===> Contoller 호출");
		List<BookVO> list = bookService.selectBook();
		m.addAttribute("bookList",list);
		
		UserInfoVO vo= userInfoService.selectUserInfo();
		System.out.println(vo.toString());
		m.addAttribute("userInfoList2",vo);
		
	
		

		//헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		
	}
	
	
	

	
	
	
}
