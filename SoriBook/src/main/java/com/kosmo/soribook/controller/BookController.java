package com.kosmo.soribook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.service.BookServiceImpl;

@Controller
public class BookController {

	@Autowired
	BookServiceImpl bookService;
	
	@RequestMapping("book.do")
	public String selectBook(Model m) {
		System.out.println("===> Contoller 호출");
		List<BookVO> list = bookService.selectBook();
		m.addAttribute("BookList",list);
		System.out.println(list);
		return "myPageBook";
	}
	
	
}
