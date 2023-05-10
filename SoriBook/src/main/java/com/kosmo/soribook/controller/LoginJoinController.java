package com.kosmo.soribook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.soribook.domain.UserInfoVO;
import com.kosmo.soribook.service.UserInfoServiceImpl;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class LoginJoinController {
	
	@Autowired
	UserInfoServiceImpl userInfoService;
	
	@RequestMapping("UserJoinForm.do")
	public void userJoinForm() {
		
	}
	
	@RequestMapping(value="/user/join.do")
	@ResponseBody
	public void userJoin(@ModelAttribute("vo") UserInfoVO vo) {
	userInfoService.insertUserInfo(vo);
		
	}
	
	@RequestMapping(value="/user/login.do")
	@ResponseBody
	public void userLogin(@ModelAttribute("vo") UserInfoVO vo) {
		UserInfoVO result = userInfoService.loginService(vo);
		System.out.println(result);
	}
	
}
