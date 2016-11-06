package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.util.DiseaseComplete;


public interface DiseaseService {

	List<Disease> getAll();
	
	List<DiseaseComplete> getAllComplete();
	
	void delete(int id);
	
	Disease add(Disease disease);
	
	Disease get(int id);

	List<Disease> findDiseaseByName(String name);

}