package com.lymm.domian;

/**
 * Created by ${Seek} on 2017/3/27
 */
public class Users {
	private Integer id;
	private String trueName;
	private String number;
	private String phone;
	private String address;

	public Users() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTrueName() {
		return trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Users{" +
				"id=" + id +
				", trueName='" + trueName + '\'' +
				", number='" + number + '\'' +
				", phone='" + phone + '\'' +
				", address='" + address + '\'' +
				'}';
	}
}
