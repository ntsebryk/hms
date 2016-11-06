package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table(name="departments")
public class Department {
    @Id
    @Column (name="id_department")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;
    
    @Column (name="department_name", length=20, nullable=false)
    private String name;
    
    @Column (name="department_description")
    private String description;
    
    public Department() {
        
    }
    
    public Department(int id) {
        this.id = id;
    }
    
    public Department(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
