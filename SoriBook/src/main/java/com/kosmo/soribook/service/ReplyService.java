package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.domain.ReplyVO;

public interface ReplyService {

	public List<ReplyVO> getReplyListByBookNo(ReplyVO vo);
	public void insertReply(ReplyVO vo);
}
