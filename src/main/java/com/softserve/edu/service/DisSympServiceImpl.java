package com.softserve.edu.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.repository.DisSympRepository;
import com.softserve.edu.repository.SymptomRepository;

@Service
public class DisSympServiceImpl implements DisSympService {
	
	@Autowired
	private DisSympRepository dsRepo;
	
	@Autowired
	private SymptomRepository sRepo;
	
    @Transactional
    public List<DiseaseSymptom> findSymptomsForDisease(Disease disease) {
    	List<DiseaseSymptom> resultList = new ArrayList<DiseaseSymptom>();
    	resultList = dsRepo.findSymptomsForDisease(disease);
    	return resultList;
    }
	
    @Transactional
	public void removeSymptomsFromDis(ArrayList<DiseaseSymptom> dsl ){
		dsRepo.delete(dsl);
	}
    @Transactional
	public List<Symptom> findSymptomByName(String param) {
		List<Symptom> resultList = sRepo.findSymptomsByNameStartingWith(param);
		return resultList;
	}

    @Transactional
    public void deleteDiseaseSymptom (DiseaseSymptom element){
    	dsRepo.delete(element);
    	
    }
    @Transactional
    public DiseaseSymptom getDisSympById(Integer id) {
    	return dsRepo.findOne(id);
    }
    
    @Transactional
	@Override
	public void addDiseaseSymptom(DiseaseSymptom ds) {
		dsRepo.save(ds);
		
	}

    @Transactional
	@Override
	public DiseaseSymptom getDiseaseSymptomByIdDiseaseAndIdSymptom(
			Integer idDisease, Integer idSymptom) {
		return dsRepo.getDiseaseSymptomByIdDiseaseAndIdSymptom(idDisease, idSymptom);
	}
    
    /**
     * @author Vlad
     * */
    @Override
    public List<Symptom> getAllSymptomsForDisease(Disease disease) {
    	return dsRepo.getAllSymptomsForDisease(disease);
    }


}
