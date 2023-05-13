package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.domain.EventVO;

public interface EventMGService {

	public void insertEventW(EventVO vo);
	public void insertEventP(EventVO vo);
	public void updateEventW(EventVO vo);
	public void updateEventP(EventVO vo);
	public List<EventVO> getEventList();
	public EventVO getEventByPK(EventVO vo);
	public void deleteEvent(EventVO vo);

	
}
