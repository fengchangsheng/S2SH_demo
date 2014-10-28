package com.fcs.dto;
import com.fcs.pojo.Publish;
/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class BookDTO implements java.io.Serializable {

	// Fields

	private Integer id;
	private Publish publish;
//	private PublishDTO publishdto = new PublishDTO();;
	private String name;
	private String author;

	// Constructors

	/** default constructor */
	public BookDTO() {
	}

	/** full constructor */
	public BookDTO(Publish publish, String name, String author) {
		this.publish = publish;
		this.name = name;
		this.author = author;
	}

	// Property accessors
	
	public Integer getId() {
		return this.id;
	}

//	public PublishDTO getPublishdto() {
//		return publishdto;
//	}
//
//	public void setPublishdto(PublishDTO publishdto) {
//		this.publishdto = publishdto;
//	}

	public void setId(Integer id) {
		this.id = id;
	}

	
	public Publish getPublish() {
		return publish;
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