package com.fcs.service;

import java.util.List;

import com.fcs.dto.BookDTO;

public interface BookService {
	
	public List<BookDTO> findAll();
	
	public void add(BookDTO dto);
	
	public void update(BookDTO dto);
	
	public void delete(int id);
	
	public BookDTO findById(int id);

}
