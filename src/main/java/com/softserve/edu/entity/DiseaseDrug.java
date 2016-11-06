package com.softserve.edu.entity;

import org.hibernate.annotations.ForeignKey;

import javax.persistence.*;

@Entity
@Table(name = "diseases_drugs")
public class DiseaseDrug extends BaseEntity {

	@ManyToOne
	@JoinColumn(name = "id_disease", nullable = false)
	@ForeignKey(name = "none")
	private Disease disease;

	@ManyToOne
	@JoinColumn(name = "id_drug", nullable = false)
	@ForeignKey(name = "none")
	private Drug drug;

	@Column(name = "drug_efficiency_ratio")
	private Integer drugEfficiencyRatio;

	@Column(name = "description")
	private String description;

	@Column(name = "drug_amount")
	private Integer drugAmount;

	public Integer getDrugAmount() {
		return drugAmount;
	}

	public void setDrugAmount(Integer drugAmount) {
		this.drugAmount = drugAmount;
	}

	public DiseaseDrug() {

	}

	public DiseaseDrug(Disease disease, Drug drug, Integer drugEfficiencyRatio, Integer drugAmount) {
		this.disease = disease;
		this.drug = drug;
		this.drugEfficiencyRatio = drugEfficiencyRatio;
		this.drugAmount = drugAmount;
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

	public Integer getDrugEfficiencyRatio() {
		return drugEfficiencyRatio;
	}

	public void setDrugEfficiencyRatio(Integer drugEfficiencyRatio) {
		this.drugEfficiencyRatio = drugEfficiencyRatio;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return String.format("%d \t%-10.10s \t%-20.20s... \t%d", getId(),
				getDrug().getName(), getDrug().getDescription(),
				getDrugEfficiencyRatio());
	}
}
