package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class UserInfoVO {


	private String UserTel; 	//전화번호(PK)
	private String userid; 		//아이디
	private String userpass; 	//비밀번호
	private String useremail;	//이메일
	private String userTF; 		//구독여부
	private String TFstart; 	//구독종료일
	private String TFend; 		//구독종료일


}
