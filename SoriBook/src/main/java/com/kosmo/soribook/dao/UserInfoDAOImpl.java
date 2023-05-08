package com.kosmo.soribook.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.soribook.domain.UserInfoVO;

@Repository("userInfoDAO")
public class UserInfoDAOImpl implements UserInfoDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<UserInfoVO> selectUserInfo() {
		System.out.println("===> Mybatis selectUserInfo() 호출");
		return mybatis.selectList("UserInfoMapper.selectUserInfo");
		
	}

}
