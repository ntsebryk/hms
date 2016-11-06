package com.softserve.edu.util;

import org.springframework.beans.factory.annotation.Autowired;

import com.softserve.edu.entity.User;
import com.softserve.edu.service.UserService;

public class ChangeUserService {
	@Autowired
	UserService userService;

	private int id;
	private String status;

	public ChangeUserService() {}

	public ChangeUserService(int id, String status) {
		this.id = id;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public User getUser() {
		return userService.findOne(id);
	}
}
