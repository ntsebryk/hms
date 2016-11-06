package com.softserve.edu.entity;

import javax.persistence.*;

import org.hibernate.annotations.ForeignKey;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "cards")
public class Card extends BaseEntity {

	@ManyToOne
	@JoinColumn(name = "id_patient", nullable = false)
	@ForeignKey(name = "none")
	private User patient;

	@Column(name = "is_active")
	private Boolean isActive;

	@Column(name = "create_date", nullable = false)
	@DateTimeFormat(pattern = "dd.MM.yyyy")
	private Date createdDate;

	@Column(name = "height", nullable = false)
	private Integer height;

	@Column(name = "weight", nullable = false)
	private Integer weight;

	public Card() {

	}

	public Card(User patient) {
		this.patient = patient;
	}

	public Card(User patient, Boolean isActive, Date createdDate) {
		this.patient = patient;
		this.isActive = isActive;
		this.createdDate = createdDate;
	}

	public User getPatient() {
		return patient;
	}

	public void setPatient(User patient) {
		this.patient = patient;
	}

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("Card id           : ");
		sb.append(this.getId());
		sb.append("\nCard date         : ");
		sb.append(this.getCreatedDate());
		sb.append("\nCard patient      : ");
		sb.append(this.getPatient().getFullName());
		sb.append(" ");
		sb.append("\nCard doctor       : ");
		sb.append("\nIs active         : ");
		sb.append(this.getIsActive());
		return sb.toString();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Card other = (Card) obj;
		if (this.getCreatedDate() != other.getCreatedDate()) {
			return false;
		}
		if (this.getIsActive() != other.getIsActive()) {
			return false;
		}
		return true;
	}
}
