package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.ServiceDAOImpl;
import com.kosmo.soribook.domain.NoticeVO;
import com.kosmo.soribook.domain.QnAVO;

@Service("serviceService")
public class ServiceServiceImpl implements ServiceService {

	@Autowired
	private ServiceDAOImpl serviceDAO;
	
	@Override
	public List<NoticeVO> selectNotice() {
		
		return serviceDAO.selectNotice();
	}
	
	@Override
	public NoticeVO selectNoticeDetail(String noticeno) {
		
		return serviceDAO.selectNoticeDetail(noticeno);
	}
	
	public void insertQnA(QnAVO vo) {

		serviceDAO.insertQnA(vo);
	}
	
    public List<QnAVO> selectQnA() {
    	System.out.println("===>ServiceDAOImpl selectQnA() 호출");
		return serviceDAO.selectQnA();
	}

}
