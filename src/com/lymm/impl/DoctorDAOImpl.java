package com.lymm.impl;

import com.lymm.dao.DoctorDAO;
import com.lymm.domian.Doctor;

/**
 * Created by ${Seek} on 2017/3/27
 */
public class DoctorDAOImpl extends BaseDAO<Doctor> implements DoctorDAO {
	@Override
	public Doctor getDoctor(String name) {
		String sql = "SELECT id,name,type,phone,introduction FROM doctor WHERE name = ?";
		return query(sql, name);
	}

}
