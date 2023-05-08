package com.kosmo.soribook.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.soribook.Pagination;
import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.service.BookService;
import com.kosmo.soribook.service.BookServiceImpl;
import com.kosmo.soribook.service.CategoryServiceImpl;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryServiceImpl categoryService;
	
	@Autowired
	BookServiceImpl bookService;
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step, Model m) {
		System.out.println("===> CategoryController.selectCategoryHeader 호출");
		List<CategoryVO> list = categoryService.selectCategory();
		m.addAttribute("category",list);
		return step;
	}
	

	@RequestMapping("header.do")
	public void selectCategory(Model m) {
		System.out.println("===> CategoryController.selectCategoryHeader 호출");
		List<CategoryVO> list = categoryService.selectCategory();
		m.addAttribute("category",list);
	}
	
	@RequestMapping("CategoryPage.do")
	public void selectCategoryList(
			String categoryno
			,Model m
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			) 
	{
		List<CategoryVO> list = categoryService.selectCategoryList(categoryno);
		m.addAttribute("bookList",list);
		
		int listSize = list.size();
		m.addAttribute("listSize",listSize);
		
		//pagination
		Pagination pagination = new Pagination();
		// pageInfo 함수에 현재페이지, 페이지 범위, 현재 카테고리 책 개수, 카테고리번호 인자 전달
		pagination.pageInfo(page, range, listSize,categoryno);
		m.addAttribute("pagination",pagination);
		m.addAttribute("bookListCnt",categoryService.getBookList(pagination));
		
		//헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		

	}
	
	
	@RequestMapping("BookDetail.do")
	public void CategoryListBookDetail(
			HttpServletRequest httpServletRequest
			,Model m
			) 
	{
		//헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		
		// 책목록 불러오기
		String bookno = httpServletRequest.getParameter("bookno");
		System.out.println("===> categoryService.getBookDetail 호출");
		System.out.println(bookno);
		List<BookVO> list = bookService.getBookDetail(bookno);
		m.addAttribute("bookList",list);
	
		

	}

	
	
	

	

	
	
	
}
