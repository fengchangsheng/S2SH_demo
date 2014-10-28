package com.fcs.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;

import com.fcs.dao.BookDAO;
import com.fcs.dto.BookDTO;
import com.fcs.pojo.Book;
import com.fcs.service.BookService;

public class BookServiceImpl implements BookService {
	private BookDAO bookdao;
	
	public BookDAO getBookdao() {
		return bookdao;
	}

	public void setBookdao(BookDAO bookdao) {
		this.bookdao = bookdao;
	}

	public void add(BookDTO dto) {
		Book book = new Book();
		BeanUtils.copyProperties(dto, book);
		bookdao.add(book);
	}
	
	public void delete(int id) {
		bookdao.delete(id);
	}

	public List<BookDTO> findAll() {
		List<BookDTO> dtos = new ArrayList<BookDTO>();
		List<Book> books = bookdao.findAll();
		for (Book book : books) {
			BookDTO dto = new BookDTO();
			BeanUtils.copyProperties(book, dto);
			dtos.add(dto);
		}
		return dtos;
	}

	public BookDTO findById(int id) {
		Book book = bookdao.get(id);
		BookDTO dto = new BookDTO();
		BeanUtils.copyProperties(book, dto);
		return dto;
	}

	public void update(BookDTO dto) {
		Book book = new Book();
		BeanUtils.copyProperties(dto, book);
		bookdao.update(book);

	}

}
