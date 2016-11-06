package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table(name = "symptoms")
public class Symptom {

    @Id
    @Column(name = "id_symptom")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idSymptom;

    @Column(name = "symptom_name", length = 50, nullable = false)
    private String name;

    @Column(name = "symptom_description")
    private String description;

    public Symptom() {
    }

    public Symptom(String name) {
	this.name = name;
    }

    public Symptom(String name, String desc) {
	this.name = name;
	this.description = desc;
    }

    public Integer getIdSymptom() {
	return idSymptom;
    }

    public void setIdSymptom(Integer idSymptom) {
	this.idSymptom = idSymptom;
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

    @Override
    public String toString() {
	return new StringBuilder().append("ID: ").append(this.getIdSymptom())
		.append("\n").append("Name: ").append(this.getName())
		.append("\n").append("Description: ")
		.append(this.getDescription()).append("\n")
		.append("---------------------------").toString();
    }

}
