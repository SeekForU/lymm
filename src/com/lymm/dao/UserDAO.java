package com.lymm.dao;

import com.lymm.domian.User;

/**
 * Created by ${Seek} on 2017/3/16
 */
public interface UserDAO {
	/**
	 * 根据用户名获取user对象
	 * @param name
	 * @return
	 */
	User getUser(String name);
}
