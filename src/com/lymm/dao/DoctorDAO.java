package com.lymm.dao;

import com.lymm.domian.Doctor;

/**
 * Created by ${Seek} on 2017/3/27
 */
public interface DoctorDAO {


	/**
	 * 获取医生信息
	 * @param name
	 * @return
	 */
	Doctor getDoctor(String name);
}
