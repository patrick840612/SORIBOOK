package com.kosmo.soribook.domain;

import lombok.Data;
 
@Data
public class CartVO { 				// 장바구니상품 클래스
	private String cartBookNo;	 	// 장바구니 상품번호 
	private String bookNo;
	private String UserTel;
	
	private String bookTitle;
	private String bookPrice;
	private String bookImg;

	
	

	

}
