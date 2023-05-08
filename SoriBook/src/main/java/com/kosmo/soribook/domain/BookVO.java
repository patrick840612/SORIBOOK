package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class BookVO {//상품 테이블

	private String bookNo; 		//상품번호 pk
	private int    bookPrice; 	// 가격
	private String bookTitle; 	// 제목
	private String bookPdate; 	// 출판일자	
	private String bookSyno;  	// 시놉시스
	private String bookImg;	  	// 섬네일이미지
	private String bookContent;	//텍스트파일
	private String bookAudio;   // 오디오파일
	private String bookSub;  	// 구독용 여부
	private String categoryNo;	// 카테고리번호
	private String categoryName;
	
	private String writerNo;
	private String writerName;
	private String writerDetail;
	
	private String companyNo;  	// 출판사 번호
	private String companyName; 
	
	private String paymentDate;
 

	

	

}
