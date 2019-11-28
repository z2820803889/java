package com.fh.model;

import java.util.ArrayList;
import java.util.List;

public class Permission {
	private Integer id;
	private String name;
	private Integer pid;
	private String url;
	private List<Permission> sonList = new ArrayList<Permission>();
	
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
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public List<Permission> getSonList() {
		return sonList;
	}
	public void setSonList(List<Permission> sonList) {
		this.sonList = sonList;
	}
	
}
