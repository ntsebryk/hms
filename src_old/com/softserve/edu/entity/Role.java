package com.softserve.edu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="roles")
public enum Role {
    ADMIN(1, "Admin"), DOCTOR(2, "Doctor")
    , DOCTOR_MANAGER(3, "Doctor manager"), PATIENT(4, "Patient");

    @Id
    @Column (name="id_role")
    @GeneratedValue (strategy=GenerationType.AUTO)
    private Integer id;
    
    @Column (name="role_name", length=20, nullable=false, unique=true)
    private String name;
    
    Role(Integer id, String name) {
        this.id = id;
        this.name = name;
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
    
    @Override
    public String toString() {
        return getId() + ": " + getName();
    }
}
