package com.lymm.test;

import com.lymm.dao.UserDAO;
import com.lymm.domian.User;
import com.lymm.impl.UserDAOImpl;
import org.junit.Test;

/**
 * Created by ${Seek} on 2017/3/16
 */
public class UserDAOTest {
	UserDAO userDAO = new UserDAOImpl();

	@Test
	public void TestGetUser() {
		User user = userDAO.getUser("admin");
		System.out.println(user);
	}
}
