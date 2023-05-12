package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.EventMGDAOImpl;
import com.kosmo.soribook.domain.EventVO;

@Service("eventMGService")
public class EventMGServiceImpl implements EventMGService {

	
	@Autowired
	private EventMGDAOImpl eventMGDAO;
	
	public void insertEventW(EventVO vo) {
		eventMGDAO.insertEventW(vo);
	}
	
	public void insertEventP(EventVO vo) {
		eventMGDAO.insertEventP(vo);
	}
	
	public void updateEventW(EventVO vo) {
		eventMGDAO.updateEventW(vo);
	}
	
	public void updateEventP(EventVO vo) {
		eventMGDAO.updateEventP(vo);
	}
	
	public List<EventVO> getEventList(){
		return eventMGDAO.getEventList();
	}
	
	public EventVO getEventByPK(EventVO vo) {
		return eventMGDAO.getEventByPK(vo);
	}
	
	public void deleteEvent(EventVO vo) {
		eventMGDAO.deleteEvent(vo);
	}

}
