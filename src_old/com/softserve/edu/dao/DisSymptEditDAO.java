package com.softserve.edu.dao;

import java.util.ArrayList;
import java.util.List;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;


public interface DisSymptEditDAO extends ElementDAO<DiseaseSymptom> {
	public List<DiseaseSymptom> findSymptomsForDisease(Disease disease);
	public List<Symptom> getSymptListSortedByName();
	public void removeListSymptoms(ArrayList<DiseaseSymptom> dsl);
	public List<Symptom> findSymptomByName(String restr);
	public List<Disease> findDiseasesForSymptom(Symptom symptom);
	

}
