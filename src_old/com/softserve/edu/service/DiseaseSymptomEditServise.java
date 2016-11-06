package com.softserve.edu.service;

import java.util.ArrayList;
import java.util.List;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;

public interface DiseaseSymptomEditServise {

	List<DiseaseSymptom> findSymptomsForDisease(Disease disease);

	List<Symptom> getSimptomListSortedByName();

	void removeSymptomsFromDis(ArrayList<DiseaseSymptom> dsl);

	List<Symptom> findSymptomByName(String restr);
	
	List<Disease> findDiseasesforSymptom(Symptom symptom);

}