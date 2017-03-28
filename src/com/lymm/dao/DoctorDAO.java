package com.lymm.dao;

import com.lymm.domian.Doctor;

import java.util.List;

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

	/**
	 * 根据筛选条件获取医生的List
	 * @param info
	 * @return
	 */
	List<Doctor> getDoctorsByList(String info);

	/**
	 * 获取所有的医生信息
	 * @return
	 */
	List<Doctor> getAllDoctors();

	/**
	 * 根据id获取医生信息
	 * @param id
	 * @return
	 */
	Doctor getDoctorById(Integer id);
	//List<Doctor> getDoctorById(Integer id);
}
