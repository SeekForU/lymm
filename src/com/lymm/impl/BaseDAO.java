package com.lymm.impl;

import com.lymm.dao.DAO;
import com.lymm.db.JDBCUtils;
import com.lymm.util.ReflectionUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.util.List;

/**
 * Created by ${Seek} on 2017/3/16
 */
public class BaseDAO<T> implements DAO<T> {

	private QueryRunner queryRunner = new QueryRunner();

	private Class<T> clazz;

	public BaseDAO() {
		clazz = ReflectionUtils.getSuperGenericType(getClass());
	}

	@Override
	public long insert(String sql, Object... args) {

		return 0;
	}

	@Override
	public void update(String sql, Object... args) {
		Connection connection = null;

		try {
			connection = JDBCUtils.getConnection();
			queryRunner.update(connection, sql, args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(connection);
		}
	}

	@Override
	public T query(String sql, Object... args) {
		Connection connection = null;

		try {
			connection = JDBCUtils.getConnection();
			return queryRunner.query(connection, sql, new BeanHandler<>(clazz), args);

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(connection);
		}

		return null;
	}

	@Override
	public List<T> queryForList(String sql, Object... args) {
		Connection connection = null;

		try {
			connection = JDBCUtils.getConnection();
			return queryRunner.query(connection, sql, new BeanListHandler<>(clazz), args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(connection);
		}
		return null;
	}

	@Override
	public <V> V getSingalVal(String sql, Object... args) {
		Connection connection = null;

		try {
			connection = JDBCUtils.getConnection();
			return (V)queryRunner.query(connection, sql, new ScalarHandler(), args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(connection);
		}
		return null;
	}
}
