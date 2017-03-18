package com.lymm.impl;

import com.lymm.dao.UserDAO;
import com.lymm.domian.User;

/**
 * Created by ${Seek} on 2017/3/16
 */
public class UserDAOImpl extends BaseDAO<User> implements UserDAO {

	@Override
	public User getUser(String name) {
		String sql = "Select userId,userName,userPassword from user where userName = ?";
		return query(sql, name);
	}
}
