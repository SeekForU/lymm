package com.lymm.domian;

import java.util.Date;

/**
 * Created by ${Seek} on 2017/3/27
 */
public class Orders {
	private Integer id;
	private String trueName;
	private String name;
	private Date date;
	private String type;

	public Orders() {
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Orders{" +
				"id=" + id +
				", trueName='" + trueName + '\'' +
				", name='" + name + '\'' +
				", date=" + date +
				", type='" + type + '\'' +
				'}';
	}
}
