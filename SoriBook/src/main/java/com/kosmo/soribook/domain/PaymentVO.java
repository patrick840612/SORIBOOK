package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class PaymentVO {

	private String paymentNo; 	 //결제번호(PK)		
	private int paymentMoney;	 //결제금액		
	private String paymentDate;	 //결제일		
	

	
}




