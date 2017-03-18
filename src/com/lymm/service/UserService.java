package com.lymm.service;

import com.lymm.dao.UserDAO;
import com.lymm.domian.User;
import com.lymm.impl.UserDAOImpl;

/**
 * Created by ${Seek} on 2017/3/16
 */
public class UserService {
	private UserDAO userDAO = new UserDAOImpl();

	public User getUser(String name) {
		return userDAO.getUser(name);
	}

}
