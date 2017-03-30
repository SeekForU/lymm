package com.lymm.test;

import com.lymm.dao.UserDAO;
import com.lymm.dao.UsersDAO;
import com.lymm.domian.Users;
import com.lymm.impl.UserDAOImpl;
import com.lymm.impl.UsersDAOImpl;
import org.junit.Test;

/**
 * Created by ${Seek} on 2017/3/16
 */
public class UserDAOTest {
	UserDAO userDAO = new UserDAOImpl();
	UsersDAO usersDAO = new UsersDAOImpl();

	@Test
	public void TestGetUser() {
		//User user = userDAO.getUser("admin");
		//System.out.println(user);


		Users users = usersDAO.getUsers("zhang", "123");
		System.out.println(users);

		if (users != null) {
			System.out.println("Hello");
		} else {
			System.out.println("Sorry");
		}
	}
}
