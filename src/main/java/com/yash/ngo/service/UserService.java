package com.yash.ngo.service;

import java.util.List;

import com.yash.ngo.domain.User;
import com.yash.ngo.exception.UserBlockedException;

public interface UserService {

	public Integer getUserCount();
	public List<User> getRecentUsers(int limit);

    public static final Integer LOGIN_STATUS_ACTIVE=1;
    public static final Integer LOGIN_STATUS_BLOCKED=2;

    public static final Integer ROLE_ADMIN=1;
    public static final Integer ROLE_USER=2;


    public void register(User u);

    public User login(String loginName,String password) throws UserBlockedException;

    public List<User> getUserList();

    public void changeLoginStatus(Integer userId, Integer loginStatus);
    public Integer countUsers();
	public double getTotalDonationAmount();
}


