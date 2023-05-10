package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.EventDAOImpl;
import com.kosmo.soribook.domain.EventVO;

@Service("eventService")
public class EventServiceImpl implements EventService {

	
	@Autowired
	private EventDAOImpl eventDAO;
	
	@Override
	public List<EventVO> selectEvent() {
		System.out.println("===> EventDAOImpl selectEvent() 호출");
		return eventDAO.selectEvent();
	}

}
