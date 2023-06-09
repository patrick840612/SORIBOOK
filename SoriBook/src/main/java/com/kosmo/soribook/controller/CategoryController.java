package com.kosmo.soribook.controller;

import java.awt.print.Book;
import java.text.NumberFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.soribook.Pagination;
import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.service.BookServiceImpl;
import com.kosmo.soribook.service.CategoryServiceImpl;

@Controller
public class CategoryController {

	@Autowired
	CategoryServiceImpl categoryService;
	@Autowired
	BookServiceImpl bookService;

	 
	  @RequestMapping("/{step}.do") public String viewPage(@PathVariable String step, Model m) {
	  System.out.println("===> CategoryController.selectCategoryHeader 호출");
	  System.out.println("#######****+++++++++++++++++++++++++");
	  List<CategoryVO> list = categoryService.selectCategory();
	  m.addAttribute("category",list);
	  return step; 
	  }
	 

	@RequestMapping("header.do")
	public void selectCategory(Model m) {
		System.out.println("===> CategoryController.selectCategoryHeader 호출");
		List<CategoryVO> list = categoryService.selectCategory();
		m.addAttribute("category", list);
	}

	@RequestMapping("CategoryPage.do")
	public void selectCategoryList(String categoryno, Model m,
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range) {
		// 전체 게시글 개수
		int listCnt = categoryService.getBookListCnt();

		// pagination
		Pagination pagination = new Pagination();
		pagination.pageInfo(page, range, listCnt, categoryno);
		m.addAttribute("pagination", pagination);
		
		
		List<BookVO> bkcntList = categoryService.getBookList(pagination);
		// bookPrice 넘버포맷 변경 9999->9,999
		NumberFormat nf = NumberFormat.getInstance();
		nf.setGroupingUsed(true);
		for (BookVO vo : bkcntList) {
			int price = vo.getBookPrice();
		    String priceWithCommas = nf.format(price);
		    vo.setBookPriceString(priceWithCommas);
		}
		m.addAttribute("bookListCnt", bkcntList);

		List<CategoryVO> list = categoryService.selectCategoryList(categoryno);
		m.addAttribute("bookList", list);

		List<CategoryVO> list2 = categoryService.selectCategory();
		m.addAttribute("category", list2);

		int listSize = list.size();
		m.addAttribute("listSize", listSize);



	}

	@RequestMapping("BookDetail.do")
	public void CategoryListBookDetail(HttpServletRequest httpServletRequest, Model m) {
		// 헤더카테고리 목록출력
		List<CategoryVO> header = categoryService.selectCategory();
		m.addAttribute("category", header);

		// 책목록 불러오기
		String bookNo = httpServletRequest.getParameter("bookno");
		List<BookVO> list = bookService.getBookDetail(bookNo);
		m.addAttribute("bookList", list);

		BookVO vo = bookService.getBookDetail2(bookNo);
		// bookPrice 넘버포맷 변경 9999->9,999
		NumberFormat nf = NumberFormat.getInstance();
		nf.setGroupingUsed(true);
		int price = vo.getBookPrice();
		String priceWithCommas = nf.format(price);
		vo.setBookPriceString(priceWithCommas);
		System.out.println(vo);
		m.addAttribute("bookDetail", vo);

		// 상품디테일 페이지 조회수 가져오기
		List<BookVO> bookCnt = bookService.getbookCnt(bookNo);
		m.addAttribute("bookCnt", bookCnt);

	}

}
