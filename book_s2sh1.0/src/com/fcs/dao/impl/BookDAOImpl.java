package com.fcs.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.fcs.dao.BookDAO;
import com.fcs.pojo.Book;

public class BookDAOImpl extends HibernateDaoSupport implements BookDAO{

	public void add(Book book) {
		this.getHibernateTemplate().save(book);
	}

	public void delete(int id) {
		this.getHibernateTemplate().delete(get(id));
	}

	public List<Book> findAll() {
		return this.getSession().createQuery("from Book book").list();
	}

	public Book get(int id) {
		return (Book) this.getHibernateTemplate().get(Book.class, id);
	}

	public void update(Book book) {
		this.getHibernateTemplate().update(book);
	}

}
