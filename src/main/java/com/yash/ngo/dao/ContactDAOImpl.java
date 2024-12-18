package com.yash.ngo.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.yash.ngo.domain.Contact;

@Repository
public class ContactDAOImpl extends BaseDAO	implements ContactDAO
{

	
	@Override
	public void saveContact(Contact contact) 
	{
		// TODO Auto-generated method stub
		String sql = "INSERT INTO contact (name, email, mobile, message, submitted_at) VALUES (:name, :email, :mobile, ;message, :submitted_at)";
		
		Map m=new HashMap<>();
		m.put("name", contact.getName());
		m.put("email", contact.getEmail());
		m.put("mobile", contact.getMobile());
		m.put("message", contact.getMessage());
		m.put("submitted_at", contact.getSubmitted_at());
		
		KeyHolder kh = new GeneratedKeyHolder();
		SqlParameterSource ps=new MapSqlParameterSource(m);
		super.getNamedParameterJdbcTemplate().update(sql, ps, kh);
		Integer contactId=kh.getKey().intValue();
        contact.setContactId(contactId);
		
	}
	
}
