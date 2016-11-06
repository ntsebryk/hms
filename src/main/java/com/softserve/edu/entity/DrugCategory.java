package com.softserve.edu.entity;

public enum DrugCategory {
	ANTIPYRETICS(1, "Antipyretics"),
	ANALGESICS(2, "Analgesics"),
	ANTIMALARIAL(3, "Antimalarial"), 
	ANTIBIOTICS(4, "Antibiotics"),
	ANTISEPTICS(5,"Antiseptics"),
	ANTIDEPRESSANS(6, "Antidepressans"),
	HORMONAL(7,"Hormonal"), 
	TRANQUILIZERS(8, "Tranquilizers"),
	OTHERS(9, "Others");

	private Integer id;
	private String name;

	DrugCategory() {
	}

	DrugCategory(Integer id, String name) {
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
