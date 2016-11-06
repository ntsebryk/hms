package com.softserve.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;

public interface DisSympRepository extends JpaRepository<DiseaseSymptom, Integer> {
	
	@Query("SELECT ds FROM DiseaseSymptom ds WHERE ds.disease = ?1")
	List<DiseaseSymptom> findSymptomsForDisease(Disease disease);

	
	@Query("SELECT ds  FROM DiseaseSymptom  ds where ds.disease.id = ?1 and  ds.symptom.id = ?2")
	DiseaseSymptom getDiseaseSymptomByIdDiseaseAndIdSymptom(Integer idDisease, Integer idSymptom);

	/**
	 * @author Vlad
	 * */
	@Query("SELECT ds.symptom FROM DiseaseSymptom ds WHERE ds.disease = ?1")
	List<Symptom> getAllSymptomsForDisease(Disease disease);
	
	List<DiseaseSymptom> findBySymptom(Symptom symptom);
	
	List<Symptom> findByDisease(Disease disease);

}
