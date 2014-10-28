package com.fcs.dto;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class UserDTO implements java.io.Serializable {

	// Fields

	private Integer UId;
	private String UName;
	private String UPass;
	private String email;

	// Constructors

	/** default constructor */
	public UserDTO() {
	}

	/** minimal constructor */
	public UserDTO(String UName, String UPass) {
		this.UName = UName;
		this.UPass = UPass;
	}

	/** full constructor */
	public UserDTO(String UName, String UPass, String email) {
		this.UName = UName;
		this.UPass = UPass;
		this.email = email;
	}

	// Property accessors

	public Integer getUId() {
		return this.UId;
	}

	public void setUId(Integer UId) {
		this.UId = UId;
	}

	public String getUName() {
		return this.UName;
	}

	public void setUName(String UName) {
		this.UName = UName;
	}

	public String getUPass() {
		return this.UPass;
	}

	public void setUPass(String UPass) {
		this.UPass = UPass;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}