package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class QnAVO {

	private String QnANo;			//상담게시글번호(PK)		
	private String QnATitle;		//상담게시글제목		
	private String QnAContent;		//상담게시글내용		
	private String QnAAnswer;		//상담게시글답변		
	private String QnADate;			//상담게시일자		
	private String QnAImg1;			//상담이미지파일명1		
	private String QnAImg2;			//상담이미지파일명2		
	private String QnAImg3;			//상담이미지파일명3		

}
