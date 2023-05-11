package com.kosmo.soribook.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public void userJoinForm(@ModelAttribute("vo") UserInfoVO vo,Model m) {
		List<UserInfoVO> result = userInfoService.userList();
		m.addAttribute("userList", result);
	}
	
	@RequestMapping(value="/user/join.do")
	@ResponseBody
	public void userJoin(@ModelAttribute("vo") UserInfoVO vo, HttpServletResponse response) throws IOException {
	userInfoService.insertUserInfo(vo);

	response.sendRedirect("/soribook/Index.jsp");
	}
	
	@RequestMapping(value="idCheckServiceCon.do" ,method=RequestMethod.POST)
	@ResponseBody
	protected Map<String,Object> idCheckServiceCon(HttpServletRequest request, HttpServletResponse response,Model m) throws IOException {
		
		//아이디 중복체크 버튼 눌렀을 때 ajax로 보낸 email값 받기
		String userId = request.getParameter("userId");
		String userTel = request.getParameter("userTel");
		UserInfoVO vo = new UserInfoVO();
		vo.setUserId(userId);
		vo.setUserTel(userTel);
		
		System.out.println(vo);
		//아이디 중복체크 메소드 호출!
		boolean resultId = userInfoService.idCheck(vo);
		boolean resultTel = userInfoService.telCheck(vo);
		System.out.println(resultId);
		System.out.println(resultTel);
//		PrintWriter out = response.getWriter();
//		out.print(resultId);
//		out.print(resultTel);

		Map<String,Object> map=new HashMap<String, Object>();
		map.put("resultId", resultId);
		map.put("resultTel", resultTel);

		return map;
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
