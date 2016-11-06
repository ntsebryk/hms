package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseDrug;
import com.softserve.edu.entity.Drug;

public class DiseaseDrugServiceImpl implements DiseaseDrugService{

	@Override
	public void addDiseaseDrug(DiseaseDrug diseaseDrug) {
		FactoryDAO.getInstance().getDiseaseDrugDAO().addElement(diseaseDrug);
		
	}

	@Override
	public void deleteDiseaseDrug(DiseaseDrug diseaseDrug) {
		FactoryDAO.getInstance().getDiseaseDrugDAO().deleteElement(diseaseDrug);
		
	}

	@Override
	public List<DiseaseDrug> getAllDrugsForDisease(Disease disease) {
		
		return FactoryDAO.getInstance().getDiseaseDrugDAO().getDrugForDisease(disease);
	}
	
	@Override
	public DiseaseDrug getDiseaseDrugById(Integer id){
		return FactoryDAO.getInstance().getDiseaseDrugDAO().getElementByID(id);
	}
	@Override
	public List<DiseaseDrug> getAllDiseasesForDrug(Drug drug){
		return FactoryDAO.getInstance().getDiseaseDrugDAO().getDiseasesForDrug(drug);
	}
		
}
