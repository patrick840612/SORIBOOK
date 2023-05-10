package com.kosmo.soribook.service;

import java.lang.reflect.Member;

import com.kosmo.soribook.domain.UserInfoVO;

public interface UserInfoService {

	
	UserInfoVO selectUserInfo();
	
	void updateUserInfo(UserInfoVO vo);
	
	public void insertUserInfo(UserInfoVO vo);
	
	public UserInfoVO loginService(UserInfoVO vo);
	public void usertf(UserInfoVO vo);
	public Member getLoginMember(String id, String pass);
}
