package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class NoticeVO {

	private String noticeNo;			//게시글번호(PK)
	private String noticeTitle;			//공지사항제목
	private String noticeContent;		//공지사항내용
	private int noticeCount;			//공지사항조회수
	private String noticeDate;			//공지게시일

}
