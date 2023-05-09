package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class UserInfoVO {


	private String usertel; 	//전화번호(PK)
	private String username;
	private String userid; 		//아이디
	private String userpass; 	//비밀번호
	private String useremail;	//이메일
	
	  private String usertf; 
	  private String tfstart; //구독여부
	  private String tfend; //구독종료일
	 

}
