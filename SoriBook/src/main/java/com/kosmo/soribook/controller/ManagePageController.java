package com.kosmo.soribook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.service.CategoryMGService;

@Controller
public class ManagePageController {
	
	@Autowired
	private CategoryMGService categoryMGService;

	@RequestMapping("/managePage.do")
	public String firstPage() {
		return "manager/managePage";
	}
	
	@ResponseBody
	@RequestMapping("/getCategoryList.do")
	public List<CategoryVO> getCategoryList(CategoryVO vo, Model model) {
		List<CategoryVO> list = categoryMGService.getCategoryList(vo);
		model.addAttribute("categoryList", list);
		System.out.println(list.toString());
		
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/insertCategory.do")
	public void insertCategory(CategoryVO vo) {
		categoryMGService.insertCategory(vo);
		
	}
	
	@ResponseBody
	@RequestMapping("/deleteCategory.do")
	public void deleteCategory(CategoryVO vo) {
		categoryMGService.deleteCategory(vo);
		
	}
	
	@ResponseBody
	@RequestMapping("/updateCategory.do")
	public void updateCategory(CategoryVO vo) {
		categoryMGService.updateCategory(vo);
		
	}
}
