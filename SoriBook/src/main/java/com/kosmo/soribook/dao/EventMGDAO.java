package com.kosmo.soribook.dao;

import java.util.List;

import com.kosmo.soribook.domain.EventVO;


public interface EventMGDAO {

	public void insertEventW(EventVO vo);
	public void insertEventP(EventVO vo);
	public void updateEventW(EventVO vo);
	public void updateEventP(EventVO vo);
	public List<EventVO> getEventList();
	public EventVO getEventByPK(EventVO vo);
	public void deleteEvent(EventVO vo);

	
}
