package com.kosmo.soribook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.domain.UserInfoVO;
import com.kosmo.soribook.service.CategoryServiceImpl;
import com.kosmo.soribook.service.UserInfoServiceImpl;

@Controller
public class UserInfoController {

	@Autowired
	UserInfoServiceImpl userInfoService;
	
	@Autowired
	CategoryServiceImpl categoryService;
	
	@RequestMapping("myPageInfo.do")
	public void selectUserInfo(Model m) {
		UserInfoVO vo= userInfoService.selectUserInfo();
		m.addAttribute("userInfoList",vo);
		System.out.println(vo);
		
		//헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		
	}
	

	@RequestMapping("updateuserInfo.do")
	public String updateUserInfo(UserInfoVO vo) {
		userInfoService.updateUserInfo(vo);

		return "redirect:/myPage.do";
	}
	
	
	  @RequestMapping("insertUserInfo.do")
	  public void insertUserInfo(UserInfoVO vo) {
	  userInfoService.insertUserInfo(vo); }
	 
	
	
	
	
}
