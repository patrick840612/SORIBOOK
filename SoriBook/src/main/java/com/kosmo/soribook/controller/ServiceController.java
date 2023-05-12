package com.kosmo.soribook.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.domain.NoticeVO;
import com.kosmo.soribook.domain.QnAVO;
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
		
		List<NoticeVO> list= ServiceService.selectNotice();
		m.addAttribute("noticeList",list);
	
		System.out.println(list);
		
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
	
	@RequestMapping("qnadummypage.do")
	  public String insertQnA(QnAVO vo) {

		System.out.println(vo);
		ServiceService.insertQnA(vo);
		return "redirect:/serviceCenter.do";
		}
	
	@RequestMapping("qna.do")
	public void selectQnA(Model m) {
		System.out.println("===========================selectQnA호출");
		List<QnAVO> list= ServiceService.selectQnA();
		System.out.println(list);
		m.addAttribute("qnaList",list);
		System.out.println(m);
		
		//헤더카테고리 목록출력
				List<CategoryVO> header = categoryService.selectCategory();
				m.addAttribute("category",header);
	    

	}
	
	
	
}
