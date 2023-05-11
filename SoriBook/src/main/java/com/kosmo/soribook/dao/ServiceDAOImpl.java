package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.NoticeVO;

@Repository("serviceDAO")
public class ServiceDAOImpl implements ServiceDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<NoticeVO> selectNotice() {
		System.out.println("===> Mybatis selectNotice() 호출");
		return mybatis.selectList("ServiceMapper.selectNotice");
	}
	
	public NoticeVO selectNoticeDetail(String noticeno) {
		System.out.println("===> Mybatis selectNoticeDetail() 호출");
		return mybatis.selectOne("ServiceMapper.selectNoticeDetail",noticeno);
	}

}
