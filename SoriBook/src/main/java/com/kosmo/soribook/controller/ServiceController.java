package com.kosmo.soribook.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.domain.NoticeVO;

import com.kosmo.soribook.service.CategoryServiceImpl;
import com.kosmo.soribook.service.ServiceServiceImpl;


@Controller
public class ServiceController {

	@Autowired
	ServiceServiceImpl ServiceService;
	
	@Autowired
	CategoryServiceImpl categoryService;
	
	@RequestMapping("serviceCenter.do")
	public void selectNotice(Model m) {
		System.out.println("===========================");
		System.out.println("===========================");
		List<NoticeVO> list= ServiceService.selectNotice();
		m.addAttribute("noticeList",list);
		System.out.println("===========================");
		System.out.println(list);
		System.out.println("===========================");
		//헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		
	}
	
	@RequestMapping("noticeDetail.do")
	public void selectnoticeDetail(Model m,HttpServletRequest httpServletRequest) {
		System.out.println("===========================");
		String noticeno = httpServletRequest.getParameter("noticeno");
		System.out.println(noticeno);
		m.addAttribute("noticeDetail",ServiceService.selectNoticeDetail(noticeno));
		System.out.println("===========================");
	
		System.out.println("===========================");
		//헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		
	}
	
	
	
}
