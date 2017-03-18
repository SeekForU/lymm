package com.lymm.dao;

import java.util.List;

/**
 * Created by ${Seek} on 2017/3/16
 */
public interface DAO<T> {

	/**
	 * 执行查询操作，返回id
	 * @param sql
	 * @param args
	 * @return
	 */
	long insert(String sql, Object... args);


	/**
	 * 执行更新操作
	 * @param sql
	 * @param args
	 */
	void update(String sql, Object... args);

	/**
	 * 执行查询操作，返回一个对象
	 *
	 * @param sql
	 * @param args
	 * @return
	 */
	T query(String sql, Object... args);

	/**
	 * 执行查询操作，返回List
	 * @param sq
	 * @param args
	 * @return
	 */
	List<T> queryForList(String sq, Object... args);

	/**
	 * 执行查询一个属性或值的操作
	 * @param sql
	 * @param args
	 * @param <V>
	 * @return
	 */
	<V> V getSingalVal(String sql, Object... args);
}
