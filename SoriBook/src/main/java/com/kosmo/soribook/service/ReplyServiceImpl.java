package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.ReplyDAO;
import com.kosmo.soribook.dao.ReplyDAOImpl;
import com.kosmo.soribook.domain.ReplyVO;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDAOImpl replyDAO;

	@Override
	public List<ReplyVO> getReplyListByBookNo(ReplyVO vo) {
		
		return replyDAO.getReplyListByBookNo(vo);
	}

	@Override
	public void insertReply(ReplyVO vo) {
		replyDAO.insertReply(vo);
		
	}
	
	
}
