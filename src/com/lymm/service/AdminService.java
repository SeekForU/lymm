package com.lymm.service;

import com.lymm.dao.AdminDAO;
import com.lymm.domian.Admin;
import com.lymm.impl.AdminDAOImpl;

/**
 * Created by ${Seek} on 2017/3/28
 */
public class AdminService {

	AdminDAO adminDAO = new AdminDAOImpl();

	/**
	 * 管理员登录判断
	 * @param name
	 * @param password
	 * @return
	 */
	public boolean equesAdmin(String name, String password) {
		try {
			Admin admin = adminDAO.equalsAdmin(name, password);
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}
