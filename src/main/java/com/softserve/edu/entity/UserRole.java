package com.softserve.edu.entity;

import org.hibernate.annotations.ForeignKey;

import javax.persistence.*;

@Entity
@Table(name = "users_roles")
public class UserRole extends BaseEntity {

	@ManyToOne
	@JoinColumn(name = "id_user", nullable = false)
	@ForeignKey(name = "none")
	private User user;

	@Column(name = "role", nullable = false)
	@Enumerated(EnumType.STRING)
	private Role role;

	@Column(name = "status", nullable = false)
	@Enumerated(EnumType.STRING)
	private Status status;

	public UserRole() {
	}

	public UserRole(User user, Role role, Status status) {
		this.user = user;
		this.role = role;
		this.status = status;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

}
