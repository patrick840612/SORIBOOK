package com.kosmo.soribook.controller;

import java.text.NumberFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.soribook.Pagination;
import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.domain.UserInfoVO;
import com.kosmo.soribook.service.BookServiceImpl;
import com.kosmo.soribook.service.CategoryServiceImpl;
import com.kosmo.soribook.service.UserInfoServiceImpl;

@Controller
public class BookController {

	@Autowired
	BookServiceImpl bookService;
	

	@Autowired
	CategoryServiceImpl categoryService;
	
	@Autowired
	UserInfoServiceImpl userInfoService;
	

	@RequestMapping("myPage.do")
	public void selectBook(Model m,HttpServletRequest httpServletRequest) {
		System.out.println("===> Contoller 호출");
		String bookno = httpServletRequest.getParameter("bookno");
		
		List<BookVO> list = bookService.selectBook(bookno);
		System.out.println("북노"+bookno);
		System.out.println("리스트"+list);
		m.addAttribute("bookList",list);
		
		UserInfoVO vo= userInfoService.selectUserInfo();
		System.out.println(vo.toString());
		m.addAttribute("userInfoList2",vo);
		
	
		//헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		
	}
	
	@RequestMapping("MainPage.do")
	public void mainpage( Model m) {
		System.out.println("===> Contoller 호출");	
		List<BookVO> list = bookService.getbookCnt2();
		m.addAttribute("bookimg",list);
		
		List<BookVO> newestList = bookService.selectNewestBook();
		m.addAttribute("newestList", newestList);
		
		//헤더카테고리 목록출력
				List<CategoryVO> header = categoryService.selectCategory();
				m.addAttribute("category",header);
	}
	
	@RequestMapping("subBookList.do")
	public void selectSub(		
			Model m
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			) {
		System.out.println("===> Contoller 호출");
		List<BookVO> listsub = bookService.selectSub();
		m.addAttribute("selectSub",listsub);
		

		//전체 게시글 개수
				int listCnt = listsub.size();
				
				//pagination
				Pagination pagination = new Pagination();
				pagination.pageInfo2(page, range, listCnt);
				m.addAttribute("pagination",pagination);
				List<BookVO> bkcntList = categoryService.getBookListForSub(pagination);
				// bookPrice 넘버포맷 변경 9999->9,999
				NumberFormat nf = NumberFormat.getInstance();
				nf.setGroupingUsed(true);
				for (BookVO vo : bkcntList) {
					int price = vo.getBookPrice();
				    String priceWithCommas = nf.format(price);
				    vo.setBookPriceString(priceWithCommas);
				}
				m.addAttribute("bookListCnt",bkcntList);
								
		//헤더카테고리 목록출력
				List<CategoryVO> header = categoryService.selectCategory();
				m.addAttribute("category",header);
	}
	
	@RequestMapping("top100.do")
	public void selectTop100(Model m
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range) {
		System.out.println("===> Contoller 호출");
//		List<BookVO> listsub = bookService.selectTop100(pagination);
//		m.addAttribute("selectTop100",listsub);
		
		//전체 게시글 개수
		int listCnt = 100;
		
		//pagination
		Pagination pagination = new Pagination();
		pagination.pageInfo2(page, range, listCnt);
		m.addAttribute("pagination",pagination);
		List<BookVO> bkcntList = bookService.selectTop100(pagination);
		// bookPrice 넘버포맷 변경 9999->9,999
		NumberFormat nf = NumberFormat.getInstance();
		nf.setGroupingUsed(true);
		for (BookVO vo : bkcntList) {
			int price = vo.getBookPrice();
		    String priceWithCommas = nf.format(price);
		    vo.setBookPriceString(priceWithCommas);
		}
		m.addAttribute("selectTop100",bkcntList);
		
		
       //헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		
		
	}
	
	@RequestMapping("search.do")
	public List<BookVO> SearchBookList(Model m, BookVO vo) { // @RequestParam String SearchBookList
		System.out.println("===> Contoller 호출");
		System.out.println(vo.toString());
		List<BookVO> list = bookService.SearchBookList(vo);
		m.addAttribute("SearchBookList",list);
		

		//헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category",header);
		
		return list;
		
	}
	
	@RequestMapping("textViewer.do")
	public void textViewer(Model m,HttpServletRequest httpServletRequest) {
		System.out.println("===> Contoller 호출");
		String bookno = httpServletRequest.getParameter("bookNo");
		m.addAttribute("viewer",bookService.viewer(bookno));
		
		

	
	
		
	}
	
	

	
	
	
}
