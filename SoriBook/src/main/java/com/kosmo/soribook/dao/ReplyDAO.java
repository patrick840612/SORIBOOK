package com.kosmo.soribook.dao;

import java.util.List;

import com.kosmo.soribook.domain.ReplyVO;

public interface ReplyDAO {

	public List<ReplyVO> getReplyListByBookNo(ReplyVO vo);
	public void insertReply(ReplyVO vo);
	
}
