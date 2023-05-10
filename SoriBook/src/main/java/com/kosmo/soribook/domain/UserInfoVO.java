package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class UserInfoVO {


	private String userTel; 	//전화번호(PK)
	private String userName;
	private String userId; 		//아이디
	private String userPass; 	//비밀번호
	private String userEmail;	//이메일
	
	
	  private String usertf; 
	  private String tfstart; //구독여부
	  private String tfend; //구독종료일
	 

}
