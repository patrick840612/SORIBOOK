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
	public UserInfoVO selectUserInfo() {
		System.out.println("===> Mybatis selectUserInfo() 호출");
		return mybatis.selectOne("UserInfoMapper.selectUserInfo");

	}

	public void updateUserInfo(UserInfoVO vo) {
		System.out.println("===> Mybatis updateUserInfo() 호출");
		//		System.out.println(vo.toString());
		mybatis.update("UserInfoMapper.updateUserInfo", vo);
	}

	public void insertUserInfo(UserInfoVO vo) {
		System.out.println("===> Mybatis insertUserInfo() 호출");
		//		System.out.println(vo.toString());
		int result;
		result = mybatis.insert("UserInfoMapper.insertUserInfo", vo);
		System.out.println("*************" + result);
		
	}
	
	public void usertf(UserInfoVO vo) {
		System.out.println("===> Mybatis usertf() 호출");
		System.out.println(vo.toString());
		mybatis.update("UserInfoMapper.usertf", vo);
	}
	

	@Override
	public UserInfoVO loginService(UserInfoVO vo) {
		return mybatis.selectOne("UserInfoMapper.loginService", vo);

	}

	@Override
	public List<UserInfoVO> userList() {
		return mybatis.selectList("UserInfoMapper.loginService");
	}

	@Override
	public boolean idCheck(UserInfoVO vo) {
		boolean result = false;
		UserInfoVO select = mybatis.selectOne("UserInfoMapper.idCheck",vo);
		if (select != null) {
			result = true;
		}
		return result;
	}

	@Override
	public boolean telCheck(UserInfoVO vo) {
		boolean result = false;
		UserInfoVO select = mybatis.selectOne("UserInfoMapper.telCheck",vo);
		if (select != null) {
			result = true;
		}
		return result;
	}
	
	

}
