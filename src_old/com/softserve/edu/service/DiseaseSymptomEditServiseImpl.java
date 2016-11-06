package com.softserve.edu.service;

import java.util.ArrayList;
import java.util.List;

import com.softserve.edu.dao.DisSymptEditImplDAO;
import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;

public class DiseaseSymptomEditServiseImpl implements DiseaseSymptomEditServise {
	private DisSymptEditImplDAO disSymptEditImplDAO  = null;
	
	public DisSymptEditImplDAO getDisSymptEditImplDAO() {
		return disSymptEditImplDAO;
	}

	public DiseaseSymptomEditServiseImpl() {
		disSymptEditImplDAO = new DisSymptEditImplDAO();
		
	}


	@Override
	public List<DiseaseSymptom> findSymptomsForDisease(Disease disease) {
		List<DiseaseSymptom> dsl = disSymptEditImplDAO.findSymptomsForDisease(disease);
		return dsl;
	}
	

	@Override
	public List<Symptom> getSimptomListSortedByName() {
		List<Symptom> sl = disSymptEditImplDAO.getSymptListSortedByName();
		return sl;
		
	}
	

	@Override
	public void removeSymptomsFromDis(ArrayList<DiseaseSymptom> dsl ){
		disSymptEditImplDAO.removeListSymptoms(dsl);
		System.out.println("Symptoms were successfully removed");
	}

	@Override
	public List<Symptom> findSymptomByName(String param) {
		List<Symptom> resultList = disSymptEditImplDAO.findSymptomByName(param);
		return resultList;
	}

	@Override
	public List<Disease> findDiseasesforSymptom(Symptom symptom) {
		List<Disease> resultList = disSymptEditImplDAO.findDiseasesForSymptom(symptom);
		return resultList;
	}
}
