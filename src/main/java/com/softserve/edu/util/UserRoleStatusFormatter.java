package com.softserve.edu.util;

import org.springframework.beans.factory.annotation.Autowired;

import com.softserve.edu.entity.User;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.UserRole;
import com.softserve.edu.service.UserService;

public class UserRoleStatusFormatter {

	private int id;
	private String status;

	public UserRoleStatusFormatter() {}

	public UserRoleStatusFormatter(int id, String status) {
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

}
