package com.fcs.actions;

import java.util.List;

import com.fcs.dto.BookDTO;
import com.fcs.dto.PublishDTO;
import com.fcs.service.BookService;
import com.fcs.service.PublishService;

public class BookAction {
	private String id;
	private String[] ids;
	private BookDTO bookdto;
	private List<BookDTO> books;
	private List<PublishDTO> pubs;
	private BookService bookService;
	private PublishService pubService;
	//查询所有
	public String list(){
		books = bookService.findAll();
		return "success";
	}
	//添加预处理
	public String toAdd(){
		pubs = pubService.findAll();
		return "success";
	}
	//开始添加
	public String add(){
		bookService.add(bookdto);
		return "list";
	}
	//更新预处理
	public String toEdit(){
		bookdto = bookService.findById(Integer.parseInt(id));
		pubs = pubService.findAll();
		return "success";
	}
	//删除
	public String delete(){
		for (String strid : ids) {
			bookService.delete(Integer.parseInt(strid));
		}
		return "list";
	}
	//更新
	public String edit(){
		System.out.println("action里："+bookdto.getAuthor());
		bookService.update(bookdto);
		return "list";
	}
	//get and set
	
	public BookService getBookService() {
		return bookService;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public List<PublishDTO> getPubs() {
		return pubs;
	}
	public void setPubs(List<PublishDTO> pubs) {
		this.pubs = pubs;
	}
	public PublishService getPubService() {
		return pubService;
	}
	public void setPubService(PublishService pubService) {
		this.pubService = pubService;
	}
	public BookDTO getBookdto() {
		return bookdto;
	}
	public void setBookdto(BookDTO bookdto) {
		this.bookdto = bookdto;
	}
	public String[] getIds() {
		return ids;
	}
	public void setIds(String[] ids) {
		this.ids = ids;
	}
	
	
	public List<BookDTO> getBooks() {
		return books;
	}
	public void setBooks(List<BookDTO> books) {
		this.books = books;
	}
	
	
}
