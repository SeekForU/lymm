package com.lymm.dao;

import com.lymm.domian.Users;

/**
 * Created by ${Seek} on 2017/3/27
 */
public interface UsersDAO {

	/**
	 * 获取用户信息
	 * @param name
	 * @return
	 */
	Users getUsers(String name);
}
