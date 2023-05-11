package com.kosmo.soribook.dao;

import java.util.List;

import com.kosmo.soribook.domain.UserInfoVO;

public interface UserInfoDAO {

	
	public UserInfoVO selectUserInfo();
	public void updateUserInfo(UserInfoVO vo);
	public void insertUserInfo(UserInfoVO vo);
	public UserInfoVO loginService(UserInfoVO vo);
	public void usertf(UserInfoVO vo);
	public List<UserInfoVO> userList();
	public boolean idCheck(UserInfoVO vo);
	public boolean telCheck(UserInfoVO vo);
	
}
