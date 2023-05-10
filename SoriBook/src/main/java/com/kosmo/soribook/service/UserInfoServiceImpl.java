package com.kosmo.soribook.service;


import java.lang.reflect.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.UserInfoDAOImpl;
import com.kosmo.soribook.domain.UserInfoVO;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAOImpl userInfoDAO;
	
	@Override
	public UserInfoVO selectUserInfo() {
		System.out.println("===> UserInfoDAOImpl selectUserInfo() 호출");
		return userInfoDAO.selectUserInfo();
	}
	
	public void updateUserInfo(UserInfoVO vo) {
		System.out.println("===>updateUserInfo 호출");
		userInfoDAO.updateUserInfo(vo);
	}
	
	public void insertUserInfo(UserInfoVO vo) {
		System.out.println("===>serviceUserInfo 호출");
		userInfoDAO.insertUserInfo(vo);
	}

	@Override
	public UserInfoVO loginService(UserInfoVO vo) {	
		return userInfoDAO.loginService(vo);
		
	}
	
	public void usertf(UserInfoVO vo) {
		System.out.println("===>updateUserInfo 호출");
		System.out.println(vo.toString());
		userInfoDAO.usertf(vo);
	}

	@Override
	public Member getLoginMember(String id, String pass) {
		
		return null;
	}
	

}
