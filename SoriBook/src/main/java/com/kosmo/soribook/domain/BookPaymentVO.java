package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class BookPaymentVO {
	
	private String BookPaymentNo;	//결제상품번호(PK)
	private int PaidPrice;			//가격


}
