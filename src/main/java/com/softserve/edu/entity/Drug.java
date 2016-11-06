package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table(name = "drugs")
public class Drug extends BaseEntity {

	@Column(name = "name", length = 100, nullable = false, unique = true)
	private String name;

	@Column(name = "hazard_ratio")
	private Integer hazardRatio;

	@Column(name = "dosage")
	private Integer dosage;

	@Column(name = "description")
	private String description;

	@Column(name = "drug_category", nullable = false)
	@Enumerated(EnumType.STRING)
	private DrugCategory drugCategory;

	public Drug() {
	}

	public Drug(String name, Integer hazardRatio, String desc, Integer dosage) {
		this.name = name;
		this.hazardRatio = hazardRatio;
		this.description = desc;
		this.dosage = dosage;
	}

	public Integer getDosage() {
		return dosage;
	}

	public void setDosage(Integer dosage) {
		this.dosage = dosage;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getHazardRatio() {
		return hazardRatio;
	}

	public void setHazardRatio(Integer hazardRatio) {
		this.hazardRatio = hazardRatio;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public DrugCategory getDrugCategory() {
		return drugCategory;
	}

    public void setDrugCategory(String drugCategory) {
    	this.drugCategory = DrugCategory.valueOf(drugCategory);
    }
    
    
    public void setDrug(Drug drug) {
    	this.name = drug.getName();
    	this.drugCategory = drug.getDrugCategory();
    	this.description = drug.getDescription();
    	this.dosage = drug.getDosage();
    	this.hazardRatio = drug.getHazardRatio();
    }   

    @Override
    public String toString() {
	return new StringBuilder()
	    .append(getId() + ".  ")
		.append(getName() + ", ")
		.append("category: " + getDrugCategory().getName())
		.append("hazard ratio = " + getHazardRatio() + ", ")
		.append("dosage = " + getDosage())		
		.append(",   ["+getDescription() + "]   ")
		.toString();
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((hazardRatio == null) ? 0 : hazardRatio.hashCode());
		result = prime * result
				+ ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
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
		Drug other = (Drug) obj;
		if (hazardRatio == null) {
			if (other.hazardRatio != null)
				return false;
		} else if (!hazardRatio.equals(other.hazardRatio))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}

}
