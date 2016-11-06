package com.softserve.edu.util;

import com.softserve.edu.entity.Role;
import com.softserve.edu.util.UserRoleStatusFormatter;

public class UserRoleParser extends UserRoleStatusFormatter {
	private String role;

	UserRoleParser() {}

	UserRoleParser(int id, String status, String role) {
		super(id, status);
		this.role = role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getRole() {
		return role;
	}
}