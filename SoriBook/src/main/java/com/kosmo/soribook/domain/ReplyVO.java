package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class ReplyVO { 			  //댓글 테이블


	private String replyNo;       //댓글번호
	private String replyContent;  //댓글내용
	private String replyDate;     //댓글작성일

}
