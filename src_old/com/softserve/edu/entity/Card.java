package com.softserve.edu.entity;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "cards")
public class Card {
    
	@Id
	@Column(name = "id_card")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer idCard;
	
	@ManyToOne
	@JoinColumn(name = "id_patient", nullable=false)
	private User patient;
	
	@ManyToOne
	@JoinColumn(name = "id_doctor")
	private User doctor;
	
	@ManyToOne
	@JoinColumn(name = "id_disease")
	private Disease disease;
	
	@Column(name = "is_doctor_needed")
	private Boolean isDoctorNeeded;
	
	@Column(name = "is_active")
	private Boolean isActive;
	
	@Column(name="date_")
	private Date date;
	
	public Card() {
	    
	}
	
	public Card(User patient) {
        this.patient = patient;
    }
	
	public Card(User patient, Boolean isActive, Date date) {
	    this.patient = patient;
	    this.isActive = isActive;
	    this.date = date;
	}

    public Integer getIdCard() {
        return idCard;
    }

    public void setIdCard(Integer idCard) {
        this.idCard = idCard;
    }

    public User getPatient() {
        return patient;
    }

    public void setPatient(User patient) {
        this.patient = patient;
    }

    public User getDoctor() {
        return doctor;
    }

    public void setDoctor(User doctor) {
        this.doctor = doctor;
    }

    public Disease getDisease() {
        return disease;
    }

    public void setDisease(Disease disease) {
        this.disease = disease;
    }

    public Boolean getIsDoctorNeeded() {
        return isDoctorNeeded;
    }

    public void setIsDoctorNeeded(Boolean isDoctorNeeded) {
        this.isDoctorNeeded = isDoctorNeeded;
    }

    public Boolean getIsActive() {
        return isActive;
    }

    public void setIsActive(Boolean isActive) {
        this.isActive = isActive;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    @Override
    public String toString() {
    	StringBuilder sb = new StringBuilder();
    	sb.append("Card id           : ");
    	sb.append(this.getIdCard());
    	sb.append("\nCard date         : ");
    	sb.append(this.getDate());
    	sb.append("\nCard patient      : ");
    	sb.append(this.getPatient().getFirstName());
    	sb.append(" ");
    	sb.append(this.getPatient().getLastName());
    	sb.append("\nCard doctor       : ");
    	if (this.getDoctor() != null) {
    		sb.append(this.getDoctor().getFirstName());
    		sb.append(" ");
    		sb.append(this.getDoctor().getLastName());
    	} else {
    		sb.append("no doctor");
    	}
    	sb.append("\nDisease           : ");
    	if (this.getDisease() != null) {
    		sb.append(this.getDisease().getName());
    	} else {
    		sb.append("no disease");
    	}
    	sb.append("\nIs active         : ");
    	sb.append(this.getIsActive());
    	return sb.toString();
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + ((disease == null) ? 0 : disease.hashCode());
		result = prime * result + ((doctor == null) ? 0 : doctor.hashCode());
		result = prime * result + ((idCard == null) ? 0 : idCard.hashCode());
		result = prime * result
				+ ((isActive == null) ? 0 : isActive.hashCode());
		result = prime * result
				+ ((isDoctorNeeded == null) ? 0 : isDoctorNeeded.hashCode());
		result = prime * result + ((patient == null) ? 0 : patient.hashCode());
		return result;
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
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (disease == null) {
			if (other.disease != null)
				return false;
		} else if (!disease.equals(other.disease))
			return false;
		if (doctor == null) {
			if (other.doctor != null)
				return false;
		} else if (!doctor.equals(other.doctor))
			return false;
		if (idCard == null) {
			if (other.idCard != null)
				return false;
		} else if (!idCard.equals(other.idCard))
			return false;
		if (isActive == null) {
			if (other.isActive != null)
				return false;
		} else if (!isActive.equals(other.isActive))
			return false;
		if (isDoctorNeeded == null) {
			if (other.isDoctorNeeded != null)
				return false;
		} else if (!isDoctorNeeded.equals(other.isDoctorNeeded))
			return false;
		if (patient == null) {
			if (other.patient != null)
				return false;
		} else if (!patient.equals(other.patient))
			return false;
		return true;
	} 
}
