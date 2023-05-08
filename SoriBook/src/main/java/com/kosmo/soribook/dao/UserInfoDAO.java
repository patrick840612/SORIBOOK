package com.kosmo.soribook.dao;

import java.util.List;

import com.kosmo.soribook.domain.UserInfoVO;

public interface UserInfoDAO {

	
	public List<UserInfoVO> selectUserInfo();
}
