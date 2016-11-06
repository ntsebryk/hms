package com.softserve.edu.entity;

import org.hibernate.annotations.ForeignKey;

import javax.persistence.*;

@Entity
@Table(name = "diseases_symptoms")
public class DiseaseSymptom extends BaseEntity {

	@ManyToOne
	@JoinColumn(name = "id_disease", nullable = false)
	@ForeignKey(name = "none")
	private Disease disease;

	@ManyToOne
	@JoinColumn(name = "id_symptom", nullable = false)
	@ForeignKey(name = "none")
	private Symptom symptom;

	public DiseaseSymptom() {

	}

	public DiseaseSymptom(Disease disease, Symptom symptom) {
		this.disease = disease;
		this.symptom = symptom;
	}

	public Disease getDisease() {
		return disease;
	}

	public void setDisease(Disease disease) {
		this.disease = disease;
	}

	public Symptom getSymptom() {
		return symptom;
	}

	public void setSymptom(Symptom symptom) {
		this.symptom = symptom;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		return sb.append("dis.: ").append(disease.getName())
				.append(" ; symp.: ").append(symptom.getName()).toString();
	}
}
