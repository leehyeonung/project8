package com.ezen.book.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ezen.book.domain.BoardVO;
import com.ezen.book.domain.BookVO;
import com.ezen.book.domain.PagingVO;
import com.ezen.book.repository.BookDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BookServiceImpl implements BookService {
	
	@Inject
	private BookDAO bodao;
	

	@Override
	public List<BookVO> getList(String book_title, int qty, int pagestart) {
		// TODO Auto-generated method stub
		return bodao.selectBookListPaging(book_title,qty,pagestart);
	}




	@Override
	public int getTotalCount(int qty, int pagestart, String book_title) {
		return bodao.searchBookTotalCount(qty,pagestart,book_title);
	}



	@Override
	public List<BoardVO> getList(PagingVO pvo) {
		log.info(">>> board Paging List check2");
		
		return bodao.selectBoardListPaging(pvo);
	}





	@Override
	public int getTotalCount(PagingVO pvo) {
		// TODO Auto-generated method stub
				return bodao.searchTotalCount(pvo);
	}

}
