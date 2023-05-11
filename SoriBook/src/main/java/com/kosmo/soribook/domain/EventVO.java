package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class EventVO {

	private String eventNo;		 //이벤트번호(PK)
	private String eventName;	 //이벤트이름
	private int eventDCP;		 //할인가격(퍼센트)
	private int eventDCW;		 //할인가격(원)
	private String eventImg;     //이벤트이미지
	private String eventDetail;  //이벤트설명

}
