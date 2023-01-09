package com.ezen.book.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ezen.book.domain.BoardVO;
import com.ezen.book.domain.BookVO;
import com.ezen.book.domain.PagingVO;

@Repository
public interface BookDAO {




	List<BookVO> selectBookListPaging(
			@Param("book_title") String book_title, 
			@Param("qty") int qty,
			@Param("pageStart") int pagestart);

	
	int searchBookTotalCount(
			@Param("qty") int qty,
			@Param("pageStart") int pagestart,
			@Param("book_title") String book_title);


	List<BoardVO> selectBoardListPaging(PagingVO pvo);


	int searchTotalCount(PagingVO pvo);











}
