package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;

public interface SymptomDAO {

    List<Symptom> getSymptomsByName(String name);

    List<Symptom> orderByNameAscending();
    
    List<Symptom> orderByNameDescending();
    
    List<Symptom> getSymptomsByDisease(Disease disease);
}
