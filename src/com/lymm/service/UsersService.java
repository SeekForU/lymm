package com.lymm.service;

import com.lymm.dao.UsersDAO;
import com.lymm.impl.UsersDAOImpl;

/**
 * Created by ${Seek} on 2017/3/28
 */
public class UsersService {
	private UsersDAO usersDAO = new UsersDAOImpl();

	/**
	 * 验证用户登录方法
	 * @param userName
	 * @param password
	 * @return
	 */
	public boolean login(String userName, String password) {
		if (usersDAO.getUsers(userName, password) != null) {
			return true;
		}
		return false;
	}
}
