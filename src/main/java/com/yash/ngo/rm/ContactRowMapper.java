package com.yash.ngo.rm;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.yash.ngo.domain.Contact;

public class ContactRowMapper implements RowMapper<Contact> 
{
    @Override
    public Contact mapRow(ResultSet rs, int rowNum) throws SQLException 
    {
        Contact contact = new Contact();
        contact.setContactId(rs.getInt("contactId"));
        contact.setName(rs.getString("name"));
        contact.setEmail(rs.getString("email"));
        contact.setMobile(rs.getString("mobile"));
        contact.setMessage(rs.getString("message"));
        contact.setSubmitted_at(rs.getTimestamp("submitted_at"));
        return contact;
    }
}
