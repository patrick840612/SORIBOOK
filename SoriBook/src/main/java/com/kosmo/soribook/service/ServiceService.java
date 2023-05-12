package com.kosmo.soribook.service;


import java.util.List;

import com.kosmo.soribook.domain.NoticeVO;
import com.kosmo.soribook.domain.QnAVO;


public interface ServiceService {

	
	public List<NoticeVO> selectNotice();
	public NoticeVO selectNoticeDetail(String noticeno);
	public void insertQnA(QnAVO vo);
	public List<QnAVO> selectQnA();
}
