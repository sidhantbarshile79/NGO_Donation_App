package com.yash.ngo.dao;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.yash.ngo.domain.Contact;
import com.yash.ngo.rm.ContactRowMapper;

@Repository
public class ContactDAOImpl extends BaseDAO implements ContactDAO {

    private static final Logger logger = Logger.getLogger(ContactDAOImpl.class.getName());

    @Override
    public void saveContact(Contact contact) {
        String sql = "INSERT INTO contact (name, email, mobile, message, submitted_at) VALUES (:name, :email, :mobile, :message, :submitted_at)";
        
        Map<String, Object> m = new HashMap<>();
        m.put("name", contact.getName());
        m.put("email", contact.getEmail());
        m.put("mobile", contact.getMobile());
        m.put("message", contact.getMessage());
        m.put("submitted_at", new Timestamp(System.currentTimeMillis()));  // Using the current timestamp
        
        KeyHolder kh = new GeneratedKeyHolder();
        SqlParameterSource ps = new MapSqlParameterSource(m);
        
        try {
            super.getNamedParameterJdbcTemplate().update(sql, ps, kh);
            Integer contactId = kh.getKey().intValue();
            contact.setContactId(contactId);
            logger.info("Contact saved successfully with ID: " + contactId);
        } catch (Exception e) {
            logger.severe("Error saving contact: " + e.getMessage());
            throw new RuntimeException("Error saving contact", e);
        }
    }

	@Override
	public List<Contact> findAll() 
	{
		String sql = "SELECT * FROM contact";
		return getJdbcTemplate().query(sql, new ContactRowMapper());     
	}
}
