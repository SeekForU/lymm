package com.lymm.impl;

import com.lymm.dao.AdminDAO;
import com.lymm.domian.Admin;

/**
 * Created by ${Seek} on 2017/3/27
 */
public class AdminDAOImpl extends BaseDAO<Admin> implements AdminDAO {
	@Override
	public Admin getAdmin(String name) {
		String sql = "SELECT name,password FROM admin WHERE name = ?";
		return query(sql, name);
	}


}
