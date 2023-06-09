package com.kosmo.soribook.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.soribook.domain.BookVO;
import com.kosmo.soribook.domain.CategoryVO;
import com.kosmo.soribook.domain.CompanyVO;
import com.kosmo.soribook.domain.EventVO;
import com.kosmo.soribook.domain.WriterVO;
import com.kosmo.soribook.service.BookMGService;
import com.kosmo.soribook.service.CategoryMGService;
import com.kosmo.soribook.service.EventMGService;

@Controller
public class ManagePageController {
	
	@Autowired
	private CategoryMGService categoryMGService;
	
	@Autowired
	private BookMGService bookMGService;
	
	@Autowired
	private EventMGService eventMGService;

	@RequestMapping("/manager.do")
	public String firstPage() {
		return "redirect:managePage.do";
	}
	
	@RequestMapping("/managePage.do")
	public String managePage() {
		return "/manager/managePage";
	}
	
	@ResponseBody
	@RequestMapping("/getCategoryList.do")
	public List<CategoryVO> getCategoryList(CategoryVO vo, Model model) {
		List<CategoryVO> list = categoryMGService.getCategoryList(vo);
		model.addAttribute("categoryList", list);
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/insertCategory.do")
	public void insertCategory(CategoryVO vo) {
		categoryMGService.insertCategory(vo);
		
	}
	
	@ResponseBody
	@RequestMapping("/deleteCategory.do")
	public void deleteCategory(CategoryVO vo) {
		categoryMGService.deleteCategory(vo);
		
	}
	
	@ResponseBody
	@RequestMapping("/updateCategory.do")
	public void updateCategory(CategoryVO vo) {
		categoryMGService.updateCategory(vo);
		
	}
	
	@ResponseBody
	@RequestMapping("/getWriterList.do")
	public List<WriterVO> getWriterList(WriterVO vo, Model model){
		List<WriterVO> list = bookMGService.getWriterList(vo);
		model.addAttribute("categoryList", list);
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/getCompanyList.do")
	public List<CompanyVO> getCompanyList(CompanyVO vo, Model model){
		List<CompanyVO> list = bookMGService.getCompanyList(vo);
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/insertBook.do") 
	public void insertBook(BookVO vo) throws IOException { 
		System.out.println(vo.toString());
		bookMGService.insertBook(vo); 
	}
	
	@ResponseBody
	@RequestMapping("/getSelectedWriter.do")
	public WriterVO getSelectedWriter(WriterVO vo) {
		return bookMGService.getSelectedWriter(vo);
	}
	
	@ResponseBody
	@RequestMapping("/getSelectedCompany.do")
	public CompanyVO getSelectedCompany(CompanyVO vo) {
		return bookMGService.getSelectedCompany(vo);
	}

	@ResponseBody
	@RequestMapping("/getSelectedCategoryBookList.do")
	public List<BookVO> getSelectedCategoryBookList(BookVO vo) {
		List<BookVO> list = bookMGService.getSelectedCategoryBookList(vo);

		return list;
	}
	
	@ResponseBody
	@RequestMapping("/writerInsert.do")
	public void writerInsert(WriterVO vo) {
		bookMGService.writerInsert(vo);
	}
	
	@ResponseBody
	@RequestMapping("/companyInsert.do")
	public void companyInsert(CompanyVO vo) {
		bookMGService.companyInsert(vo);
	}
	
	@ResponseBody
	@RequestMapping("/getBook.do")
	public BookVO getBook(BookVO vo) {
		return bookMGService.getBook(vo);
	}
	
	@ResponseBody
	@RequestMapping("/deleteBook.do")
	public void deleteBook(BookVO vo) {
		bookMGService.deleteBook(vo);
	}

	@ResponseBody
	@RequestMapping("/updateBook.do")
	public void updateBook(BookVO vo) throws IOException {
		bookMGService.updateBook(vo);
	}
	
	@ResponseBody
	@RequestMapping("/insertEventW.do")
	public void insertEventW(EventVO vo) throws IOException {
		eventMGService.insertEventW(vo);		
	}
	
	@ResponseBody
	@RequestMapping("/insertEventP.do")
	public void insertEventP(EventVO vo) throws IOException {
		eventMGService.insertEventP(vo);		
	}
	
	@ResponseBody
	@RequestMapping("/updateEventW.do")
	public void updateEventW(EventVO vo) throws IOException {
		System.out.println(vo.toString());
		System.out.println("===========================");
		eventMGService.updateEventW(vo);		
	}
	
	@ResponseBody
	@RequestMapping("/updateEventP.do")
	public void updateEventP(EventVO vo) throws IOException {
		eventMGService.updateEventP(vo);		
	}

	
	
	
	@ResponseBody
	@RequestMapping("/getEventList.do")
	public List<EventVO> getEventList(){
		return eventMGService.getEventList();
	}
	
	@ResponseBody
	@RequestMapping("getEventByPK.do")
	public EventVO getEventByPK(EventVO vo) {
		return eventMGService.getEventByPK(vo);
	}
	
	@ResponseBody
	@RequestMapping("deleteEvent.do")
	public void deleteEvent(EventVO vo) {
		eventMGService.deleteEvent(vo);
	}
}
