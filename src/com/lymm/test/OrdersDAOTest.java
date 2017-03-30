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

	}

	@Test
	public void TestAddOrders() {
		//Orders orders = new Orders("zhang", "li", null, "Hello");
		//Orders orders = new Orders("zhang", "li", null, "吗");
		Orders orders = new Orders("按计划", "里", null, "吗");
		System.out.println(orders);
		ordersDAO.AddOrders(orders);

	}
}
