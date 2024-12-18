package com.yash.ngo.domain;

import java.time.LocalDateTime;

public class Contact 
{
	private int contactId;
	private String name;
	private String email;
	private String mobile;
	private String message;
	private LocalDateTime submitted_at;
	
	
	public Contact() 
	{
		
	}


	public int getContactId() {
		return contactId;
	}


	public void setContactId(int contactId) {
		this.contactId = contactId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public LocalDateTime getSubmitted_at() {
		return submitted_at;
	}


	public void setSubmitted_at(LocalDateTime submitted_at) {
		this.submitted_at = submitted_at;
	}


	@Override
	public String toString() {
		return "ContactCommand [contactId=" + contactId + ", name=" + name + ", email=" + email + ", mobile=" + mobile
				+ ", message=" + message + ", submitted_at=" + submitted_at + "]";
	}
	
	
	
	
}
