package com.softserve.edu.entity;

import org.hibernate.annotations.ForeignKey;

import javax.persistence.*;

@Entity
@Table(name = "diseases")
public class Disease extends BaseEntity {

	@Column(name = "name", length = 100, nullable = false)
	private String name;

	@ManyToOne
	@JoinColumn(name = "id_department", nullable = false)
	@ForeignKey(name = "none")
	private Department department;

	@Column(name = "description")
	private String description;

	public Disease() {

	}

	public Disease(String name, Department dep, String description) {
		this.name = name;
		this.department = dep;
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	@Override
	public String toString() {
	    StringBuilder str = new StringBuilder();
	    return str.append("id: ").append(id)
	            .append(" \nname: ").append(name)
	            .append(" \ndescription: ").append(description)
	            .append(" \ndepartament: ").append(department.getName()).toString(); 
	}

}
