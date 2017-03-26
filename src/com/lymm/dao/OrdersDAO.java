package com.lymm.dao;

import com.lymm.domian.Orders;

/**
 * Created by ${Seek} on 2017/3/27
 */
public interface OrdersDAO {


	/**
	 * 获取记录
	 * @param name
	 * @return
	 */
	Orders getOrders(String name);

	/**
	 *增加一条记录
	 */
	void AddOrders(Orders orders);
}
