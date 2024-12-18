package com.yash.ngo.service;

import java.util.List;

import com.yash.ngo.domain.Contact;

public interface ContactService 
{
	public void saveContact(Contact contact);
	public List<Contact> findAll();
}
