package com.kosmo.soribook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.service.CategoryServiceImpl;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryServiceImpl categoryService;
	
	
	
	public void  selectCategory(CategoryVO vo) {
		categoryService.selectCategory(vo);
	}
	
	
	
}
