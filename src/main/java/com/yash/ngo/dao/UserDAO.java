package com.yash.ngo.dao;

import java.util.List;

import com.yash.ngo.domain.User;

public interface UserDAO {
    public void save(User u);
    public void update(User u);
    public void delete(User u);
    public void delete(Integer userId);
    public User findById(Integer userId);
    public List<User> findAll();
    public List<User> findByProperty(String propName, Object propValue);
    public int countUsers();
	/* public double getTotalDonationAmount(); */
}
