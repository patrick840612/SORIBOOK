package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class ReplyVO { 			  //댓글 테이블


	private String ReplyNo;       //댓글번호
	private String ReplyContent;  //댓글내용
	private String ReplyDate;     //댓글작성일

}
