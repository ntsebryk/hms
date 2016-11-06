package com.softserve.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseDrug;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.repository.DiseaseDrugRepository;

@Service
public class DiseaseDrugServiceImpl implements DiseaseDrugService{
	
	@Autowired
	DiseaseDrugRepository diseaseDrugRepository;

	@Override
	@Transactional
	public void addDiseaseDrug(DiseaseDrug diseaseDrug) {
		diseaseDrugRepository.save(diseaseDrug);
	}

	@Override
	@Transactional
	public void deleteDiseaseDrug(DiseaseDrug diseaseDrug) {
		diseaseDrugRepository.delete(diseaseDrug);
		
	}

	@Override
	@Transactional
	public List<DiseaseDrug> getAllDrugsForDisease(Disease disease) {
		return diseaseDrugRepository.findByDisease(disease);
	}

	@Override
	@Transactional
	public DiseaseDrug getDiseaseDrugById(Integer id) {
		return diseaseDrugRepository.findOne(id);
	}

	@Override
	@Transactional
	public List<DiseaseDrug> getAllDiseasesForDrug(Drug drug) {
		return diseaseDrugRepository.findByDrug(drug);
	}
	
	@Override
	@Transactional
	public List<DiseaseDrug> getAllDrugsForDiseaseByName(Disease disease, String name) {
		return diseaseDrugRepository.findByDiseaseAndDrugNameLike(disease, name);
	}
	@Override
	@Transactional
	public List<DiseaseDrug> getAllDrugsForDiseaseOrderByName(Disease disease, String order){
		if(order.equals("DESC")){
			return diseaseDrugRepository.findByDiseaseOrderByDrugNameDesc(disease);
		} else {
			return diseaseDrugRepository.findByDiseaseOrderByDrugNameAsc(disease);
		}
	}
	
	public List<DiseaseDrug> getAllDrugsForDiseaseOrderByDrugEfficiencyRatio(Disease disease, String order){
			return diseaseDrugRepository.findByDiseaseOrderByDrugEfficiencyRatioDesc(disease);
		
	}

	/**
	 * @author Vlad
	 * */
	@Override
	public List<Drug> getAllDrugsOnlyForDisease(Disease disease) {
		return diseaseDrugRepository.findAllDrugsOnlyByDisease(disease);
	}	

}
