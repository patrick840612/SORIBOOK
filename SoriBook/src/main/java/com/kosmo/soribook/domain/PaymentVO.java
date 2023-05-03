package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class PaymentVO {

	private String PaymentNo; 	 //결제번호(PK)		
	private int PaymentMoney;	 //결제금액		
	private String PaymentDate;	 //결제일		
	

	
}




