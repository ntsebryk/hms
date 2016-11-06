package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table(name = "drugs")
public class Drug {
    
	@Id
	@Column(name = "id_drug")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer idDrug;
	
	@Column(name = "drug_name", length = 20, nullable=false, unique=true)
	private String name;
	
	@Column(name = "drug_coefficient")
	private Integer coeficient;
	
	@Column(name = "drug_description")
	private String description;
	
	public Drug() {
	    
	}
	
	public Drug(String name, Integer coef, String desc) {
	    this.name = name;
	    this.coeficient = coef;
	    this.description = desc;
	}

    public Integer getIdDrug() {
        return idDrug;
    }

    public void setIdDrug(Integer idDrug) {
        this.idDrug = idDrug;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCoeficient() {
        return coeficient;
    }

    public void setCoeficient(Integer coeficient) {
        this.coeficient = coeficient;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    @Override
    public String toString(){
        //return String.format("drug: %s coef: %3d descr: %s", name, coeficient, description);
        return new StringBuilder().append(getIdDrug() + ".  ")
        		.append(getName() + "\t[")
        		.append(getDescription() + "]\t")
        		.append("k = " + getCoeficient())
        		.toString();    	
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((coeficient == null) ? 0 : coeficient.hashCode());
		result = prime * result
				+ ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((idDrug == null) ? 0 : idDrug.hashCode());
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
		if (coeficient == null) {
			if (other.coeficient != null)
				return false;
		} else if (!coeficient.equals(other.coeficient))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (idDrug == null) {
			if (other.idDrug != null)
				return false;
		} else if (!idDrug.equals(other.idDrug))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}
    
    
}
