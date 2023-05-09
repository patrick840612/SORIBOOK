package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.ReplyVO;

@Repository("replyDAO")
public class ReplyDAOImpl implements ReplyDAO {

	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ReplyVO> getReplyListByBookNo(ReplyVO vo) {
		
		return mybatis.selectList("getReplyListByBookNo",vo);
	}

	@Override
	public void insertReply(ReplyVO vo) {
		mybatis.insert("insertReply",vo);
		
	}
	
	
	
}
