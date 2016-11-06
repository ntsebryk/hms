/**
 * 
 */
package com.softserve.edu.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;

import com.softserve.edu.entity.Symptom;

/**
 * @author User
 *
 */
public interface SymptomService {
    
    void addSymptom(Symptom symptom);

    void editSymptom(Symptom symptom);

    void deleteSymptom(Symptom symptom);

    Symptom findSymptomById(Integer id);
    
    Symptom findSymptomByName(String name);
    
    List<Symptom> findSymptomsByDisease(Integer idDisease);

    List<Symptom> findAllSymptoms();
    
    List<Symptom> findAllSymptomsByOrder(Sort sort);
    
    List<Symptom> findSymptomsStartWith(String search);
    
    List<Symptom> findDistinctSymptFordisease(Integer diseaseId);
    
    Page<Symptom> getPage(Integer rows, Integer tabNumber, String order, Boolean isSorted, String search);

    Page<Symptom> findSymptomsPages(Integer tabNumber, Integer rows);
    
    Page<Symptom> findSymptomsPages(Integer tabNumber, Integer rows, String search);
    
    Page<Symptom> findSymptomsPagesStartWith(Integer tabNumber, Integer rows, String search);

    Page<Symptom> findSortedSymptomPages(Integer tabNumber, Integer rows, String sort, String search);

    Sort sortByNameAsc();
    
    Sort sortByNameDesc();
}
