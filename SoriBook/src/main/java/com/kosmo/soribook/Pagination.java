package com.kosmo.soribook;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.Data;

@Data
public class Pagination {

	private int listSize = 9;      //초기값으로 목록개수를 10으로 셋팅
	private int rangeSize = 10;     //초기값으로 페이지범위를 10으로 셋팅
	private int page;	//현재페이지
	private int range;	//현재 페이지 범위
	private int listCnt;	// 전체 게시물 개수
	private int pageCnt;	// 전체 페이지 범위 개수
	private int startPage;	// 각 페이지 범위 시작 번호
	private int startList;	// 
	private int endPage;	// 각 페이지 범위 끝 번호
	private boolean prev;	// 이전 페이지 여부
	private boolean next;	// 다음 페이지 여부
	private String categoryNo;
	
	
	public void pageInfo(int page, int range, int listCnt, String categoryNo) {
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;
		this.categoryNo = categoryNo;
		
		//전체 페이지수
		this.pageCnt =  (int)Math.ceil(listCnt/(double)listSize);
		System.out.println(listCnt);
		System.out.println((double)listSize);
		System.out.println((int)Math.ceil(listCnt/(double)listSize));
		System.out.println(this.pageCnt);
		
		//시작 페이지
		this.startPage = (range-1)*rangeSize+1;
		
		// 끝 페이지
		this.endPage = range*rangeSize;
		

		// 게시판 시작번호
		this.startList = (page -1 )* listSize;
		
		// 이전 버튼 상태
		this.prev = range == 1? false:true;
		
		// 다음 버튼 상태
		this.next = pageCnt > endPage ? true : false;
		if(this.endPage> this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next=false;
		}
	}
	
	public void pageInfo2(int page, int range, int listCnt) {
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;
		
		
		//전체 페이지수
		this.pageCnt =  (int)Math.ceil(listCnt/(double)listSize);
		System.out.println(listCnt);
		System.out.println((double)listSize);
		System.out.println((int)Math.ceil(listCnt/(double)listSize));
		System.out.println(this.pageCnt);
		
		//시작 페이지
		this.startPage = (range-1)*rangeSize+1;
		
		// 끝 페이지
		this.endPage = range*rangeSize;
		

		// 게시판 시작번호
		this.startList = (page -1 )* listSize;
		
		// 이전 버튼 상태
		this.prev = range == 1? false:true;
		
		// 다음 버튼 상태
		this.next = pageCnt > endPage ? true : false;
		if(this.endPage> this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next=false;
		}
	}
}
