package com.lymm.dao;

import com.lymm.domian.Admin;

/**
 * Created by ${Seek} on 2017/3/27
 */
public interface AdminDAO {

	/**
	 * 获取管理员
	 * @param name
	 * @return
	 */
	Admin getAdmin(String name);

	Admin equalsAdmin(String name, String passwd);
}
