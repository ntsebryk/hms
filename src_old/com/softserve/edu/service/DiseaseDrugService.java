package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseDrug;
import com.softserve.edu.entity.Drug;



public interface DiseaseDrugService {
	public void addDiseaseDrug(DiseaseDrug diseaseDrug);
	
	public void deleteDiseaseDrug(DiseaseDrug diseaseDrug);
	
	public List<DiseaseDrug> getAllDrugsForDisease(Disease disease);
	
	public DiseaseDrug getDiseaseDrugById(Integer id);
	
	public List<DiseaseDrug> getAllDiseasesForDrug(Drug drug);
	
	
}
