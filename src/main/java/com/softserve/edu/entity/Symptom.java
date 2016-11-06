package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table(name = "symptoms")
public class Symptom extends BaseEntity {

	@Column(name = "name", length = 250, nullable = false, unique = true)
	private String name;

	@Column(name = "description")
	private String description;

	@Column(name = "body_part", nullable = false)
	@Enumerated(EnumType.STRING)
	private BodyPart bodyPart;

	public Symptom() {
	}

	public Symptom(String name) {
		this.name = name;
	}

	public Symptom(String name, String desc) {
		this.name = name;
		this.description = desc;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public BodyPart getBodyPart() {
		return bodyPart;
	}

	public void setBodyPart(BodyPart bodyPart) {
		this.bodyPart = bodyPart;
	}

	@Override
	public String toString() {
		return new StringBuilder().append("ID: ").append(this.getId())
				.append("\n").append("Name: ").append(this.getName())
				.append("\n").append("Description: ")
				.append(this.getDescription()).append("\n")
				.append("---------------------------").toString();
	}

}
