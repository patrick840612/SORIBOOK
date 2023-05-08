package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.domain.UserInfoVO;

public interface UserInfoService {

	
	List<UserInfoVO> selectUserInfo();
	
	void updateUserInfo(UserInfoVO vo);
}
