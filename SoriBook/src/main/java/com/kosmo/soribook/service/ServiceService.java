package com.kosmo.soribook.service;


import java.util.List;

import com.kosmo.soribook.domain.NoticeVO;


public interface ServiceService {

	
	public List<NoticeVO> selectNotice();
	public NoticeVO selectNoticeDetail(String noticeno);
}
