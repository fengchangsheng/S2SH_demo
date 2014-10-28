package com.fcs.dao;

import java.util.List;

import com.fcs.pojo.Book;

public interface BookDAO {
	
	public List<Book> findAll();
	
	public void add(Book book);
	
	public void update(Book book);
	
	public void delete(int id);
	
	public Book get(int id);
}
