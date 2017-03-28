package com.lymm.impl;

import com.lymm.dao.OrdersDAO;
import com.lymm.domian.Orders;

import java.util.List;

/**
 * Created by ${Seek} on 2017/3/27
 */
public class OrdersDAOImpl extends BaseDAO<Orders> implements OrdersDAO {
	@Override
	public Orders getOrders(String name) {
		String sql = "SELECT id,trueName,name,time,type FROM orders WHERE name = ?";
		return query(sql, name);
	}

	@Override
	public void AddOrders(Orders orders) {
		String sql = "INSERT INTO orders(trueName,name,time,type) VALUES(?,?,?,?)";
		this.update(sql, orders.getTrueName(),orders.getName(),orders.getDate(),orders.getType());
	}

	@Override
	public List<Orders> getOrdersByList() {
		String sql = "SELECT * from orders";
		return queryForList(sql,null);
	}

	@Override
	public void deleteOrder(Integer id) {
		String sql = "delete from orders where id=?";
		update(sql, id);
	}
}
