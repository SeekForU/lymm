package com.lymm.impl;

import com.lymm.dao.DoctorDAO;
import com.lymm.domian.Doctor;

import java.util.List;

/**
 * Created by ${Seek} on 2017/3/27
 */
public class DoctorDAOImpl extends BaseDAO<Doctor> implements DoctorDAO {
	@Override
	public Doctor getDoctor(String name) {
		String sql = "SELECT id,name,type,phone,introduction FROM doctor WHERE name = ?";
		return query(sql, name);
	}

	@Override
	public List<Doctor> getDoctorsByList(String info) {
		//select *from doctor where name=? or type=?
		String sql = "SELECT * FROM doctor WHERE name = ? or type = ? or id = ?";
		return queryForList(sql, info, info,info);
	}

	@Override
	public List<Doctor> getAllDoctors() {
		String sql = "SELECT * FROM doctor";
		return queryForList(sql, null);
	}

	//@Override
	//public List<Doctor> getDoctorById(Integer id) {
	//	String sql = "SELECT * FROM doctor WHERE id = ?";
	//	return queryForList(sql, id);
	//}
	@Override
	public Doctor getDoctorById(Integer id) {
		String sql = "SELECT * FROM doctor WHERE id = ?";
		return query(sql, id);
	}

}
