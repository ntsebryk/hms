package com.softserve.edu.entity;

import javax.persistence.*;


@Entity
@Table(name = "diseases_symptoms")
public class DiseaseSymptom {
    
	@Id
	@Column(name = "id_disease_symptom")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer idDiseaseSymptom;
	
	@ManyToOne
	@JoinColumn(name = "id_disease", nullable=false)
//	@Column(name = "id_disease", nullable=false)
	private Disease disease;
	
	@ManyToOne
	@JoinColumn(name = "id_symptom", nullable=false)
//	@Column(name = "id_symptom", nullable=false)
	private Symptom symptom;
	
	public DiseaseSymptom() {
	    
	}
	
	public DiseaseSymptom(Disease disease, Symptom symptom) {
	    this.disease = disease;
	    this.symptom = symptom;
	}

    public Integer getIdDiseaseSymptom() {
        return idDiseaseSymptom;
    }

    public void setIdDiseaseSymptom(Integer idDiseaseSymptom) {
        this.idDiseaseSymptom = idDiseaseSymptom;
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
	public String toString(){
	StringBuilder sb = new StringBuilder();
	return sb.append("dis.: ")
			 .append(disease.getName())
			 .append(" ; symp.: ")
			 .append(symptom.getName()).toString();
}
}
