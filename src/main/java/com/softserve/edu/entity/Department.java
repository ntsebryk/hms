package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table(name="departments")
public class Department extends BaseEntity {

    @Column (name="department_name", length=50, nullable=false, unique=true)
    private String name;
    
    @Column (name="department_description")
    private String description;
    
    public Department() {
        
    }
    
    public Department(String name, String description) {
        this.name = name;
        this.description = description;
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
}
