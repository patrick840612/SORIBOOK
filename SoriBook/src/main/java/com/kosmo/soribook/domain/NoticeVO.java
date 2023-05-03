package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class NoticeVO {

	private String NoticeNo;			//게시글번호(PK)
	private String NoticeTitle;			//공지사항제목
	private String NoticeContent;			//공지사항내용
	private int NoticeCount;			//공지사항조회수
	private String NoticeDate;			//공지게시일

}
