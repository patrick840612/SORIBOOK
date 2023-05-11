package com.kosmo.soribook.dao;

import java.util.List;

import com.kosmo.soribook.domain.NoticeVO;

public interface ServiceDAO {

	
	public List<NoticeVO> selectNotice();
	public NoticeVO selectNoticeDetail(String noticeno);


}
