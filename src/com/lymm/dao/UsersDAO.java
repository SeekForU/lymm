package com.lymm.dao;

import com.lymm.domian.Users;

import java.util.List;

/**
 * Created by ${Seek} on 2017/3/27
 */
public interface UsersDAO {

	/**
	 * 获取用户信息 同时作为判断登录使用
	 * @param name
	 * @return
	 */
	Users getUsers(String name,String password);

	/**
	 * 获取所有的用户信息
	 * @return
	 */
	List<Users> getUsersByList();


	/**
	 * 增加用户，同时作为注册使用
	 * @param users
	 */
	void addUsers(Users users);

}
