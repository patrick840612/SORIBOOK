package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.domain.UserInfoVO;

public interface UserInfoService {

	
	UserInfoVO selectUserInfo();
	
	void updateUserInfo(UserInfoVO vo);
	
	public void insertUserInfo(UserInfoVO vo);
}
