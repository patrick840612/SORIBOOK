package com.kosmo.soribook.domain;

import lombok.Data;

@Data
public class EventVO {

	private String EventNo;		 //이벤트번호(PK)
	private String EventName;	 //이벤트이름
	private int ventDCP;		 //할인가격(퍼센트)
	private int EventDCW;		 //할인가격(원)

}
