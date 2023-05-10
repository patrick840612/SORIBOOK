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
import com.kosmo.soribook.domain.WriterVO;
import com.kosmo.soribook.service.BookMGService;
import com.kosmo.soribook.service.CategoryMGService;

@Controller
public class ManagePageController {
	
	@Autowired
	private CategoryMGService categoryMGService;
	
	@Autowired
	private BookMGService bookMGService;

	@RequestMapping("/managePage.do")
	public String firstPage() {
		return "manager/managePage";
	}
	
	@ResponseBody
	@RequestMapping("/getCategoryList.do")
	public List<CategoryVO> getCategoryList(CategoryVO vo, Model model) {
		List<CategoryVO> list = categoryMGService.getCategoryList(vo);
		model.addAttribute("categoryList", list);
		System.out.println(list.toString());
		
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
		System.out.println("==============================");
		System.out.println(list.toString());
		System.out.println("==============================");
		
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/insertBook.do") 
	public void insertBook(BookVO vo) throws IOException { 
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

	 
}
