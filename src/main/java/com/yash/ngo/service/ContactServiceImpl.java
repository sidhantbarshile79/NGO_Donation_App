package com.yash.ngo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yash.ngo.dao.BaseDAO;
import com.yash.ngo.dao.ContactDAO;
import com.yash.ngo.domain.Contact;
import com.yash.ngo.domain.Donation;

@Service
public class ContactServiceImpl extends BaseDAO implements ContactService
{

	@Autowired 
	private ContactDAO contactDAO;

	@Override
	public void saveContact(Contact contact) {
		contactDAO.saveContact(contact);
		
	}

	@Override
	public List<Contact> findAll() {
		List<Contact> contacts=contactDAO.findAll();
		  return contacts;
	}
	
	

}
