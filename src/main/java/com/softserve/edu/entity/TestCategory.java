package com.softserve.edu.entity;

public enum TestCategory {
	BLOOD(1, "Blood"),
	CYTOLOGY(2, "Cytology"),
	GENETIC(3, "Genetic"),
	HORMONAL(4, "Hormonal"), 	
	ONCOLOGY(5, "Oncology"),	
	PARASITIC(6, "Parasitic"),	
	ULTRASONOGRAPHY(7, "Ultrasonography"),
	RENTGENOGRAPHY(8, "Rentgenography"),
	TOMOGRAPHY(9, "Tomography"),	
	OTHERS(10, "Others");

	private Integer id;
	private String name;

	TestCategory() {
	}

	TestCategory(Integer id, String name) {
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
}
