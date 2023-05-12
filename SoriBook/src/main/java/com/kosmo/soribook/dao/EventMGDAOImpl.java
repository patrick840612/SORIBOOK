package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.EventVO;

@Repository("eventMGDAO")
public class EventMGDAOImpl implements EventMGDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertEventW(EventVO vo) {
		mybatis.insert("EventMGMapper.insertEventW", vo);
	}
	
	public void insertEventP(EventVO vo) {
		mybatis.insert("EventMGMapper.insertEventP", vo);
	}
	
	public void updateEventW(EventVO vo) {
		mybatis.update("EventMGMapper.updateEventW", vo);
	}
	
	public void updateEventP(EventVO vo) {
		mybatis.update("EventMGMapper.updateEventP", vo);
	}
	
	public List<EventVO> getEventList(){
		return mybatis.selectList("EventMGMapper.getEventList");
	}
	
	public EventVO getEventByPK(EventVO vo) {
		return mybatis.selectOne("EventMGMapper.getEventByPK", vo);
	}
	
	public void deleteEvent(EventVO vo) {
		mybatis.delete("EventMGMapper.deleteEvent", vo);
	}
	

}
