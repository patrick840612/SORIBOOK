package com.kosmo.soribook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.soribook.domain.UserInfoVO;
import com.kosmo.soribook.service.UserInfoServiceImpl;

@Controller
public class UserInfoController {

	@Autowired
	UserInfoServiceImpl userInfoService;
	
	@RequestMapping("myPageInfo.do")
	public void selectUserInfo(Model m) {
		List<UserInfoVO> list = userInfoService.selectUserInfo();
		m.addAttribute("userInfoList",list);
		System.out.println(list);
		
	}
	
	@RequestMapping("userInfo.do")
	public String updateBoard(UserInfoVO vo) {
		userInfoService.updateUserInfo(vo);
		return "redirect:/userInfo.do";
	}
	
	
}
