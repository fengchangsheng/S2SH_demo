package com.fcs.pojo;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book implements java.io.Serializable {

	// Fields

	private Integer id;
	private Publish publish;
	private String name;
	private String author;

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** full constructor */
	public Book(Publish publish, String name, String author) {
		this.publish = publish;
		this.name = name;
		this.author = author;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Publish getPublish() {
		return this.publish;
	}

	public void setPublish(Publish publish) {
		this.publish = publish;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

}