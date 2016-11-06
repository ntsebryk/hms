package com.softserve.edu.util;

import java.util.List;

import com.softserve.edu.entity.Department;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Symptom;

public class DiseaseComplete {

	private int id;
	private String name;
	private String description;	
	private Department department;
	private List<Symptom> symptoms;
	private List<Drug> drugs;
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Symptom> getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(List<Symptom> symptoms) {
		this.symptoms = symptoms;
	}

	public List<Drug> getDrugs() {
		return drugs;
	}

	public void setDrugs(List<Drug> drugs) {
		this.drugs = drugs;
	}	

}
