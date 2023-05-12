package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.NoticeVO;
import com.kosmo.soribook.domain.QnAVO;

@Repository("serviceDAO")
public class ServiceDAOImpl implements ServiceDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<NoticeVO> selectNotice() {
		
		return mybatis.selectList("ServiceMapper.selectNotice");
	}
	
	public NoticeVO selectNoticeDetail(String noticeno) {
		
		return mybatis.selectOne("ServiceMapper.selectNoticeDetail",noticeno);
	}
	
	public void insertQnA(QnAVO vo) {

		//		System.out.println(vo.toString());
		int result;
		result = mybatis.insert("ServiceMapper.insertQnA", vo);
		System.out.println("*************" + result);
		
	}
	
    public List<QnAVO> selectQnA() {
    	System.out.println("===> Mybatis selectQnA() 호출");
		return mybatis.selectList("ServiceMapper.selectQnA");
	}

}
