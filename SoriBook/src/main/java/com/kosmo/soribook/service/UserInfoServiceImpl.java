package com.kosmo.soribook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.UserInfoDAOImpl;
import com.kosmo.soribook.domain.UserInfoVO;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAOImpl UserInfoDAO;
	
	@Override
	public List<UserInfoVO> selectUserInfo() {
		System.out.println("===> UserInfoDAOImpl selectUserInfo() 호출");
		return UserInfoDAO.selectUserInfo();
	}
	
	public void updateUserInfo(UserInfoVO vo) {
		UserInfoDAO.updateUserInfo(vo);
	}

}
