package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.EventVO;

@Repository("eventDAO")
public class EventDAOImpl implements EventDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<EventVO> selectEvent() {
		System.out.println("===> Mybatis selectEvent() 호출");
		return mybatis.selectList("EventMapper.selectEvent");
	}

}
