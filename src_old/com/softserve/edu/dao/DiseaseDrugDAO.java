package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseDrug;
import com.softserve.edu.entity.Drug;


public interface DiseaseDrugDAO extends ElementDAO<DiseaseDrug>{
	public List<DiseaseDrug> getDrugForDisease(Disease disease);
	
	public List<DiseaseDrug> getDiseasesForDrug(Drug drug);
}
