package com.kosmo.soribook.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class EventVO {

	private String eventNo;		 //이벤트번호(PK)
	private String eventName;	 //이벤트이름
	private int eventDCP;		 //할인가격(퍼센트)
	private int eventDCW;		 //할인가격(원)
	private String eventImg;     //이벤트이미지
	private String eventDetail;  //이벤트설명
	private String eventStartDate; // 이벤트 시작일
	private String eventEndDate; // 이벤트 시작일
	
	//****************************************** 파일업로드용
	MultipartFile fileEventImg; // 상품 썸네일 이미지용
	String evet_img_name;
	
	// 이벤트이미지 파일 경로 및 이름지정
	public void setFileEventImg(MultipartFile fileEventImg) {
		this.fileEventImg = fileEventImg;
		
		if(!fileEventImg.isEmpty()) {
			this.evet_img_name = fileEventImg.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			this.eventImg = uuid.toString()+evet_img_name;
			
			File f = new File("D:\\Spring\\webgit\\test\\src\\main\\webapp\\resources\\eventImg\\"+eventImg);
			
			try {
				fileEventImg.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public MultipartFile getFileEventImg() {
		return fileEventImg;
	}

}
