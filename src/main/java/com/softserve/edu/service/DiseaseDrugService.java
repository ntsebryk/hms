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
	
	public List<DiseaseDrug> getAllDrugsForDiseaseByName(Disease disease, String name);
	
	public List<DiseaseDrug> getAllDrugsForDiseaseOrderByName(Disease disease, String order);
	
	public List<DiseaseDrug> getAllDrugsForDiseaseOrderByDrugEfficiencyRatio(Disease disease, String order);

	/**
	 * @author Vlad
	 * */
	List<Drug> getAllDrugsOnlyForDisease(Disease disease);
}
