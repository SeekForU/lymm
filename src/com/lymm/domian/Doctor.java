package com.lymm.domian;

/**
 * Created by ${Seek} on 2017/3/27
 */
public class Doctor {
	private Integer id;
	private String name;
	private String type;
	private String phone;
	private String introduction;


	public Doctor() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	@Override
	public String toString() {
		return "Doctor{" +
				"id=" + id +
				", name='" + name + '\'' +
				", type='" + type + '\'' +
				", phone='" + phone + '\'' +
				", introduction='" + introduction + '\'' +
				'}';
	}
}
