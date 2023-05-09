package com.kosmo.soribook.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.soribook.dao.UserInfoDAOImpl;
import com.kosmo.soribook.domain.UserInfoVO;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAOImpl UserInfoDAO;
	
	@Override
	public UserInfoVO selectUserInfo() {
		System.out.println("===> UserInfoDAOImpl selectUserInfo() 호출");
		return UserInfoDAO.selectUserInfo();
	}
	
	public void updateUserInfo(UserInfoVO vo) {
		System.out.println("===>updateUserInfo 호출");
		System.out.println(vo.toString());
		UserInfoDAO.updateUserInfo(vo);
	}
	
	public void insertUserInfo(UserInfoVO vo) {
		System.out.println("===>serviceUserInfo 호출");
		System.out.println(vo.toString());
		UserInfoDAO.insertUserInfo(vo);
	}
	

}
