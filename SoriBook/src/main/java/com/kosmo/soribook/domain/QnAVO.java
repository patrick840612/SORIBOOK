package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class QnAVO {

	private String qnANo;			//상담게시글번호(PK)		
	private String qnATitle;		//상담게시글제목		
	private String qnAContent;		//상담게시글내용		
	private String qnAAnswer;		//상담게시글답변		
	private String qnADate;			//상담게시일자		
	private String qnAImg1;			//상담이미지파일명1		
	private String qnAImg2;			//상담이미지파일명2		
	private String qnAImg3;			//상담이미지파일명3		

}
