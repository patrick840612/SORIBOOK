package com.kosmo.soribook.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BookVO {//상품 테이블

	private String bookNo; 		//상품번호 pk
	private int bookPrice; 	// 가격
	private String bookPriceString;
	private String bookTitle; 	// 제목
	private String bookPdate; 	// 출판일자	
	private String bookSyno;  	// 시놉시스
	private String bookImg;	  	// 섬네일이미지
	private String bookContent;	//텍스트파일
	private long bookContentSize; // 텍스트파일 용량
	private String bookAudio;   // 오디오파일
	private String bookSub;  	// 구독용 여부
	private String categoryNo;	// 카테고리번호
	private String categoryName;
	private String majorCategoryNo;
	private String bookCnt;
	
	private String writerNo;
	private String writerName;
	private String writerDetail;
	
	private String companyNo;  	// 출판사 번호
	private String companyName; 
	
	private String paymentDate;
	
	String searchBookKeyword;// 관리자페이지 상품검색 키워드
	
	//****************************************** 파일업로드용
	MultipartFile fileImg; // 상품 썸네일 이미지용
	String img_name;
	MultipartFile fileText; // ebook 텍스트용
	String text_name;
	MultipartFile fileAudio; // 오디오 파일용
	String audio_name;
	
	// 오디오 파일 경로 및 이름지정
	public void setFileAudio(MultipartFile fileAudio) {
		this.fileAudio = fileAudio;
		
		if(!fileAudio.isEmpty()) {
			this.audio_name = fileAudio.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			this.bookAudio = uuid.toString()+audio_name;
			
			File f = new File("D:\\Spring\\webgit\\soribook\\src\\main\\webapp\\resources\\bookAudio\\"+bookAudio);
			
			System.out.println(f.getAbsolutePath());
			System.out.println(f.getName());
			
			try {
				fileAudio.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	// 상품이미지 파일 경로 및 이름지정
	public void setFileImg(MultipartFile fileImg) {
		this.fileImg = fileImg;
		
		if(!fileImg.isEmpty()) {
			this.img_name = fileImg.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			this.bookImg = uuid.toString()+img_name;
			
			File f = new File("D:\\Spring\\webgit\\soribook\\src\\main\\webapp\\resources\\bookImg\\"+bookImg);
			
			try {
				fileImg.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	// eBook 텍스트 파일 이름, 경로, 사이즈(용량) 지정
	public void setFileText(MultipartFile fileText) {
		this.fileText = fileText;
		
		if(!fileText.isEmpty()) {
			this.text_name = fileText.getOriginalFilename();
			this.bookContentSize = fileText.getSize();
			
			UUID uuid = UUID.randomUUID();
			this.bookContent = uuid.toString()+text_name;
			
			File f = new File("D:\\Spring\\webgit\\soribook\\src\\main\\webapp\\resources\\bookContent\\"+bookContent);
			
			try {
				fileText.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public MultipartFile getFileImg() {
		return fileImg;
	}
 
	public MultipartFile getFileText() {
		return fileText;
	}

	public MultipartFile getFileAudio() {
		return fileAudio;
	}
	

}
