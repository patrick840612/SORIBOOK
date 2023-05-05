package com.kosmo.soribook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.service.CategoryServiceImpl;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryServiceImpl categoryService;
	
	
	@RequestMapping("CategoryPage.do")
	public void  selectCategory(Model m) {
		System.out.println("===> Contoller 호출");
		List<CategoryVO> list = categoryService.selectCategory();
		m.addAttribute("categoryList",list);
		System.out.println(list);
	}
	
	
	
}
