package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class QnAVO {

	private String qnaNo;			//상담게시글번호(PK)		
	private String qnaTitle;		//상담게시글제목		
	private String qnaContent;		//상담게시글내용		
	private String qnaAnswer;		//상담게시글답변		
	private String qnaDate;			//상담게시일자		
	private String qnaImg1;			//상담이미지파일명1		
	private String qnaImg2;			//상담이미지파일명2		
	private String qnaImg3;			//상담이미지파일명3		
    private String userTel;
}
