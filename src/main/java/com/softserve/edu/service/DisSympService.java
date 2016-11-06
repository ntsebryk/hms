package com.softserve.edu.service;

import java.util.ArrayList;
import java.util.List;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;

public interface DisSympService {

	List<DiseaseSymptom> findSymptomsForDisease(Disease disease);

	void removeSymptomsFromDis(ArrayList<DiseaseSymptom> dsl);

	List<Symptom> findSymptomByName(String restr);

	void deleteDiseaseSymptom (DiseaseSymptom element);
	
	void addDiseaseSymptom (DiseaseSymptom ds);
	
	DiseaseSymptom getDisSympById(Integer id);
	
	DiseaseSymptom getDiseaseSymptomByIdDiseaseAndIdSymptom(Integer idDisease, Integer idSymptom);

	/**
	 * @author Vlad
	 * */
	List<Symptom> getAllSymptomsForDisease(Disease disease);
	

}