package com.yash.ngo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.yash.ngo.dao.BaseDAO;
import com.yash.ngo.dao.UserDAO;
import com.yash.ngo.domain.User;
import com.yash.ngo.exception.UserBlockedException;
import com.yash.ngo.rm.UserRowMapper;

@Service
public class UserServiceImpl extends BaseDAO implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Override
    public void register(User u) 
    {
        userDAO.save(u);
    }

    @Override
    public User login(String loginName, String password) throws UserBlockedException {
        String sql = "select userId, name, phone, email, address, role, loginStatus, loginName" +
                " from user where loginName=:ln and password=:pw";

        Map m = new HashMap();
        m.put("ln", loginName);
        m.put("pw", password);

        try {
            User u = getNamedParameterJdbcTemplate().queryForObject(sql, m, new UserRowMapper());
            if(u.getLoginStatus().equals(UserService.LOGIN_STATUS_BLOCKED)) {
                throw new UserBlockedException("Your accunt is blocked. Please contact to admin");
            }
            else {
                return u;
            }
        } catch (EmptyResultDataAccessException ex) {
            return null;
        }

    }

    @Override
    public List<User> getUserList() {
        return userDAO.findAll();
    }

    @Override
    public void changeLoginStatus(Integer userId, Integer loginStatus) {

    }

    @Override
    public Integer getUserCount() {
        return userDAO.findAll().size();
    }

    @Override
    public List<User> getRecentUsers(int limit) {
        List<User> allUsers = userDAO.findAll();
        return allUsers.subList(0, Math.min(limit, allUsers.size()));
    }

	@Override
	public Integer countUsers() {
		return userDAO.countUsers();
	}

	@Override
	public double getTotalDonationAmount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return userDAO.findById(userId);
	}

}