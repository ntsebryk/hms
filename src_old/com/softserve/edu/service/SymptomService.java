/**
 * 
 */
package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.Symptom;

/**
 * @author User
 *
 */
public interface SymptomService {

    Symptom findSymptomById(Integer id);

    List<Symptom> findAllSymptoms();
    
    List<Symptom> findSymptomsByName(String name);
    
    List<Symptom> findAllSymptomsByAscendingOrder();
    
    List<Symptom> findAllSymptomsByDescendingOrder();
    
    List<Symptom> findAllSymptomsByDisease(Disease disease);

    void addSymptom(Symptom symptom);

    void editSymptom(Symptom symptom);

    void deleteSymptom(Symptom symptom);

}
