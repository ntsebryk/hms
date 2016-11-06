package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table(name="diseases_drugs")
public class DiseaseDrug {
    
    @Id
    @Column(name="id_disease_drug")
    @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer idDiseasDrug;
    
    @ManyToOne
    @JoinColumn(name="id_disease", nullable=false)
	private Disease disease;
    
    @ManyToOne
    @JoinColumn(name="id_drug", nullable=false)
	private Drug drug;
    
    @Column(name="disease_drug_coefficient")
	private Integer diseaseDrugCoefficient;
	
    public DiseaseDrug() {
        
    }
    
    public DiseaseDrug(Disease disease, Drug drug, Integer coef) {
        this.disease = disease;
        this.drug = drug;
        this.diseaseDrugCoefficient = coef;
    }

    public Integer getIdDiseasDrug() {
        return idDiseasDrug;
    }

    public void setIdDiseasDrug(Integer idDiseasDrug) {
        this.idDiseasDrug = idDiseasDrug;
    }

    public Disease getDisease() {
        return disease;
    }

    public void setDisease(Disease disease) {
        this.disease = disease;
    }

    public Drug getDrug() {
        return drug;
    }

    public void setDrug(Drug drug) {
        this.drug = drug;
    }

    public Integer getDiseaseDrugCoefficient() {
        return diseaseDrugCoefficient;
    }

    public void setDiseaseDrugCoefficient(Integer diseaseDrugCoefficient) {
        this.diseaseDrugCoefficient = diseaseDrugCoefficient;
    }
    
    @Override
	public String toString(){
    	return String.format("%d \t%-10.10s \t%-20.20s... \t%d", getIdDiseasDrug(), getDrug().getName(), getDrug()
				.getDescription(), getDiseaseDrugCoefficient());
    }
}
