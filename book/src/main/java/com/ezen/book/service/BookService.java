package com.ezen.book.service;

import java.util.List;

import com.ezen.book.domain.BoardVO;
import com.ezen.book.domain.BookVO;
import com.ezen.book.domain.PagingVO;

public interface BookService {





	List<BookVO> getList(String book_title, int qty, int pagestart);

	int getTotalCount(int qty, int pagestart, String book_title);

	List<BoardVO> getList(PagingVO pvo);

	int getTotalCount(PagingVO pvo);



	





}
