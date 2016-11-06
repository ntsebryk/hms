package com.softserve.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseDrug;
import com.softserve.edu.entity.Drug;

public interface DiseaseDrugRepository extends JpaRepository<DiseaseDrug, Integer> {
	
	public List<DiseaseDrug> findByDisease(Disease disease);
	
	public List<DiseaseDrug> findByDrug(Drug drug);
	
	public List<DiseaseDrug> findByDiseaseAndDrugNameLike(Disease disease, String name);
	
	public List<DiseaseDrug> findByDiseaseOrderByDrugNameDesc(Disease disease);
	
	public List<DiseaseDrug> findByDiseaseOrderByDrugNameAsc(Disease disease);
	
	public List<DiseaseDrug> findByDiseaseOrderByDrugEfficiencyRatioDesc(Disease disease);

	/**
	 * @author Vlad
	 * */
	@Query("SELECT dd.drug FROM DiseaseDrug dd WHERE dd.disease = ?1")
	public List<Drug> findAllDrugsOnlyByDisease(Disease disease);
}
