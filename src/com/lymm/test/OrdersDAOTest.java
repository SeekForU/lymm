package com.lymm.test;

import com.lymm.dao.OrdersDAO;
import com.lymm.domian.Orders;
import com.lymm.impl.OrdersDAOImpl;
import org.junit.Test;

/**
 * Created by ${Seek} on 2017/3/16
 */
public class OrdersDAOTest {

	OrdersDAO ordersDAO = new OrdersDAOImpl();

	@Test
	public void TestGetOrders() {

		Orders orders = ordersDAO.getOrders("zhang");
		System.out.println(orders);
	}

	@Test
	public void TestAddOrders() {
		Orders orders = new Orders("zhang", "li", null, "Hello");
		ordersDAO.AddOrders(orders);

	}
}
