package com.kosmo.soribook.service;

import java.util.List;

import com.kosmo.soribook.domain.BookVO;

public interface BookService {

	List<BookVO> selectBook();
}
