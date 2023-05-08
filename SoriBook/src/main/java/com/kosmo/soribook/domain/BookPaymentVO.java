package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class BookPaymentVO {
	
	private String bookPaymentNo;	//결제상품번호(PK)
	private int paidPrice;			//가격


}
