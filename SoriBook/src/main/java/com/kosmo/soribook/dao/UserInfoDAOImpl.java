package com.kosmo.soribook.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.UserInfoVO;

@Repository("userInfoDAO")
public class UserInfoDAOImpl implements UserInfoDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public UserInfoVO selectUserInfo() {
		System.out.println("===> Mybatis selectUserInfo() 호출");
		return mybatis.selectOne("UserInfoMapper.selectUserInfo");
		
	}
	
	public void updateUserInfo(UserInfoVO vo) {
		System.out.println("===> Mybatis updateUserInfo() 호출");
		System.out.println(vo.toString());
		mybatis.update("UserInfoMapper.updateUserInfo", vo);
	}
	
	public void insertUserInfo(UserInfoVO vo) {
		System.out.println("===> Mybatis insertUserInfo() 호출");
		System.out.println(vo.toString());
		mybatis.insert("UserInfoMapper.insertUserInfo", vo);
	}

}
