package com.softserve.edu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ForeignKey;

@Entity
@Table(name = "laboratories")
public class Laboratory extends BaseEntity {

	@Column(name = "name", nullable = false, unique = true)
	private String name;

	@ManyToOne
	@JoinColumn(name = "id_labmanager", nullable = false)
	@ForeignKey(name = "none")
	private User labManager;

	@Column(name = "description")
	private String description;

	public Laboratory() {

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public User getLabManager() {
		return labManager;
	}

	public void setLabManager(User labManager) {
		this.labManager = labManager;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "name=" + name + ", labManager=" + labManager.getId();
	}

}
