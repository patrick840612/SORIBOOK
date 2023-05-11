package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.ServiceDAOImpl;
import com.kosmo.soribook.domain.NoticeVO;

@Service("serviceService")
public class ServiceServiceImpl implements ServiceService {

	@Autowired
	private ServiceDAOImpl serviceDAO;
	
	@Override
	public List<NoticeVO> selectNotice() {
		System.out.println("===> ServiceDAOImpl selectNotice() 호출");
		return serviceDAO.selectNotice();
	}
	
	@Override
	public NoticeVO selectNoticeDetail(String noticeno) {
		System.out.println("===> ServiceDAOImpl selectNoticeDetail() 호출");
		return serviceDAO.selectNoticeDetail(noticeno);
	}

}
