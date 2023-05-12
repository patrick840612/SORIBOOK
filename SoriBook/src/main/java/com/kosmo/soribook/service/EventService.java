package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.domain.EventVO;

public interface EventService {

	public List<EventVO> selectEvent();
	public EventVO selectEventDetail(String eventno);

	
}
