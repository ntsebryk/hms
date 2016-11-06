package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Drug;

public interface DrugDAO extends ElementDAO<Drug>{
	
	boolean addDrug(Drug drug);
	
	boolean updateDrug(Drug drug);
	
	boolean deleteDrug(Drug drug);
	
	Drug getDrugById(Integer id);
	
	
	List<Drug> getDrugByName(String name);
	
	List<Drug> orderDrugByName();
	


     // useless:
	List<String> getNameList();
	
	Drug find(String drugName);

}
