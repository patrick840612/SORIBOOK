package com.kosmo.soribook.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.soribook.Pagination;
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
	
	@RequestMapping("MainPage.do")
	public void mainpage( Model m) {
		System.out.println("===> Contoller 호출");	
		List<BookVO> list = bookService.getbookCnt2();
		m.addAttribute("bookimg",list);
		
		//헤더카테고리 목록출력
				List<CategoryVO> header = categoryService.selectCategory();
				m.addAttribute("category",header);
	}
	
	@RequestMapping("subBookList.do")
	public void selectSub(		
			Model m
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			) {
		System.out.println("===> Contoller 호출");
		List<BookVO> listsub = bookService.selectSub();
		m.addAttribute("selectSub",listsub);
		
	
				
		//전체 게시글 개수
				int listCnt = listsub.size();
				
				//pagination
				Pagination pagination = new Pagination();
				pagination.pageInfo2(page, range, listCnt);
				m.addAttribute("pagination",pagination);
				m.addAttribute("bookListCnt",categoryService.getBookListForSub(pagination));
				
				
		//헤더카테고리 목록출력
				List<CategoryVO> header = categoryService.selectCategory();
				m.addAttribute("category",header);
	}
	
	

	
	
	
}
