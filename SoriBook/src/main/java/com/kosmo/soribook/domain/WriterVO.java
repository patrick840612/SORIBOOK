package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class WriterVO {			 //작가 테이블
	
	private String writerNo;     //작가번호pk
	private String writerName;   //작가이름	
	private String writerDetail; //작가설명	

	
	

}
