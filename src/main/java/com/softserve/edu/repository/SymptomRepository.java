/**
 * 
 */
package com.softserve.edu.repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.softserve.edu.entity.BodyPart;
import com.softserve.edu.entity.Symptom;

/**
 * @author Kirsanov
 *
 */
public interface SymptomRepository extends JpaRepository<Symptom, Serializable> {

    Symptom findByName(String name);
    
    @Query("select s from Symptom s where s.name like ?1%")
    List<Symptom> findSymptomsByNameStartingWith(String name);
    
    Page<Symptom> findByNameStartingWith(String search, Pageable pageable);
    
    @Query("select ds.symptom from DiseaseSymptom ds where ds.disease.id = ?1")
    List<Symptom> findSymptomsForDisease(Integer id);
    
    @Query("select s from Symptom s where s.id not in (select ds.symptom.id from DiseaseSymptom ds where ds.disease.id = ?1)")
    List<Symptom> findDistinctSymptFordisease(Integer diseaseId);
    
    List<Symptom> findSymptomByBodyPart(BodyPart bodyPart);
}