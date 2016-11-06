package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table (name="diseases")
public class Disease {
    
    @Id
    @Column(name="id_disease")
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer idDisease;
    
    @Column(name="disease_name", length=100, nullable=false)
	private String name;
    
    @ManyToOne
    @JoinColumn(name="id_department", nullable=false)
    private Department department;
    
    @Column(name="disease_description")
	private String description;
    
    public Disease() {
        
    }
    
    public Disease(String name, Department dep, String description) {
        this.name = name;
        this.department = dep;
        this.description = description;
    }

    public Integer getIdDisease() {
        return idDisease;
    }

    public void setIdDisease(Integer idDisease) {
        this.idDisease = idDisease;
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
    
    /*@Override
    	public String toString(){
    	StringBuilder sb = new StringBuilder();
    	return sb.append("dis.: ")
    			 .append(name)
    			 .append(";\ndep.: ")
    			 .append(department.getName())
    			 .append(";\ndescr.: ")
    			 .append(description).toString();
    }*/
    
    @Override
    public String toString() {
        return String.format("%d %-20.20s %-20.20s%s", this.getIdDisease(), this.getName(),
                this.getDescription(), "...\t\t"
                        + this.getDepartment().getName());
    }
    
}
