package com.kosmo.soribook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("manager")
public class ManagePageController {

	@RequestMapping(value="/managePage.do")
	public String firstPage() {
		return "manager/managePage";
	}
}
