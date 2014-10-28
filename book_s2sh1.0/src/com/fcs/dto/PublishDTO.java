package com.fcs.dto;

import java.util.HashSet;
import java.util.Set;

/**
 * Publish entity. @author MyEclipse Persistence Tools
 */

public class PublishDTO implements java.io.Serializable {

	// Fields

	private Integer pubId;
	private String pubName;
//	private Set books = new HashSet(0);

	// Constructors

	/** default constructor */
	public PublishDTO() {
	}

	/** full constructor */
//	public PublishDTO(String pubName, Set books) {
//		this.pubName = pubName;
//		this.books = books;
//	}

	// Property accessors

	public Integer getPubId() {
		return this.pubId;
	}

	public void setPubId(Integer pubId) {
		this.pubId = pubId;
	}

	public String getPubName() {
		return this.pubName;
	}

	public void setPubName(String pubName) {
		this.pubName = pubName;
	}

//	public Set getBooks() {
//		return this.books;
//	}
//
//	public void setBooks(Set books) {
//		this.books = books;
//	}

}