package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Drug;

public interface DrugDAOInterface extends ElementDAO<Drug>{
	public List<Drug> getDrugByName(String name);
	
	public List<Drug> orderDrugByName();

}
