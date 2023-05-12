package com.kosmo.soribook.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.domain.EventVO;
import com.kosmo.soribook.service.CategoryServiceImpl;
import com.kosmo.soribook.service.EventServiceImpl;

@Controller
public class EventController {

	@Autowired
	EventServiceImpl eventService;
	
	@Autowired
	CategoryServiceImpl categoryService;
	

	@RequestMapping("event.do")
	public void selectEvent(Model m) {
		System.out.println("===> Contoller 호출");
		List<EventVO> list = eventService.selectEvent();
		m.addAttribute("eventList",list);
		
		//헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		
	}
	
	@RequestMapping("eventDetail.do")
	public void selectEventDetail(Model m,HttpServletRequest httpServletRequest) {
		System.out.println("===> Contoller 호출");
		String eventno = httpServletRequest.getParameter("eventno");
		System.out.println(eventno);		
		m.addAttribute("eventDetail",eventService.selectEventDetail(eventno));
		
		//헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		
	}
	
	
	
	
	
	

	
	
	
}
