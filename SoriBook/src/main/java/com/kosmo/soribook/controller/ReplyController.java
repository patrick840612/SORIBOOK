package com.kosmo.soribook.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.soribook.domain.ReplyVO;
import com.kosmo.soribook.service.CategoryServiceImpl;
import com.kosmo.soribook.service.ReplyServiceImpl;

@Controller
public class ReplyController {

	
	@Autowired
	ReplyServiceImpl replyService;
	
	@Autowired
	CategoryServiceImpl categoryService;
	

	
	@RequestMapping(value = "/reply/replyList.do")
	@ResponseBody
	public Map<String,Object> replyList(ReplyVO vo){
		List<ReplyVO> replyList=replyService.getReplyListByBookNo(vo);
		Map<String,Object> map=new HashMap<String, Object>();

		map.put("result", true);
		map.put("data", replyList);
		map.put("size", replyList.size());
		return map;
	}
	
	@RequestMapping(value = "/reply/replyRegist.do")
	@ResponseBody
	public Map<String,Object> insertReply(ReplyVO vo){
		System.out.println(vo);
		replyService.insertReply(vo);
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("result", true);
		map.put("msg", "등록성공했어요");
		return map;
	}
}
