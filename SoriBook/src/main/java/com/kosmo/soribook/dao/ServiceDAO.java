package com.kosmo.soribook.dao;

import java.util.List;

import com.kosmo.soribook.domain.NoticeVO;
import com.kosmo.soribook.domain.QnAVO;

public interface ServiceDAO {

	
	public List<NoticeVO> selectNotice();
	public NoticeVO selectNoticeDetail(String noticeno);
	public void insertQnA(QnAVO vo);
	public List<QnAVO> selectQnA();

}
