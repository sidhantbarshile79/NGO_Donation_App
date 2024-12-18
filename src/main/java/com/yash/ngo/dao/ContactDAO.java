package com.yash.ngo.dao;

import java.util.List;

import com.yash.ngo.domain.Contact;

public interface ContactDAO 
{
	void saveContact(Contact contact);
	public List<Contact> findAll();
}
