package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class BookVO {//상품 테이블

	private String BookNo; 		//상품번호 pk
	private int    BookPrice; 	// 가격
	private String BookTitle; 	// 제목
	private String BookPdate; 	// 출판일자	
	private String BookSyno;  	// 시놉시스
	private String BookImg;	  	// 섬네일이미지
	private String BookContent;	//텍스트파일
	private String BookAudio;   // 오디오파일
	private String WriterName;
	private String PaymentDate;
 

	

}
