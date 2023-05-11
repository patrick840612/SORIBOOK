package com.kosmo.soribook.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	public void userLogin(@ModelAttribute("vo") UserInfoVO vo
			,HttpServletRequest request
			,HttpServletResponse response
			) throws IOException 
	{
		UserInfoVO result = userInfoService.loginService(vo);
		
		if(result != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("id", result);
			

			response.sendRedirect("/soribook/Index.jsp");
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인 실패')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	@RequestMapping(value="/user/logout.do")
	public void  userLogout(
			HttpServletRequest request
			,HttpServletResponse response
			) throws IOException 
	{

		HttpSession session= request.getSession(false);
		if(session != null) {
			session.invalidate();
		}
		response.sendRedirect("/soribook/Index.jsp");
	}
	
	
	
}
