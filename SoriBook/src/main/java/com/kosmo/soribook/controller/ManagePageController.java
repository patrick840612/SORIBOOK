package com.kosmo.soribook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagePageController {

	@RequestMapping("/managePage.do")
	public String firstPage() {
		return "manager/managePage";
	}
}
