package com.kosmo.soribook.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.soribook.Pagination;
import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.service.CategoryServiceImpl;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryServiceImpl categoryService;
	
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
		//전체 게시글 개수
		int listCnt = categoryService.getBookListCnt();
		
		//pagination
		Pagination pagination = new Pagination();
		pagination.pageInfo(page, range, listCnt,categoryno);
		m.addAttribute("pagination",pagination);
		m.addAttribute("bookListCnt",categoryService.getBookList(pagination));
		
		List<CategoryVO> list = categoryService.selectCategoryList(categoryno);
		m.addAttribute("bookList",list);
		
		List<CategoryVO> list2 = categoryService.selectCategory();
		m.addAttribute("category",list2);
		
		int listSize = list.size();
		m.addAttribute("listSize",listSize);
		
	}
	
	
	

	

	
	
	
}
