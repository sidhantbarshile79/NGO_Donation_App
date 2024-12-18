package com.yash.ngo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yash.ngo.dao.BaseDAO;
import com.yash.ngo.dao.ContactDAO;
import com.yash.ngo.domain.Contact;

@Service
public class ContactServiceImpl extends BaseDAO implements ContactService
{

	@Autowired 
	private ContactDAO contactDAO;
	
	@Override
	public void saveContact(Contact contact) 
	{
		contactDAO.saveContact(contact);
	}

}
