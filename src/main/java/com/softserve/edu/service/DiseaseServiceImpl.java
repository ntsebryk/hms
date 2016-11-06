package com.softserve.edu.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.repository.DiseaseRepository;
import com.softserve.edu.util.DiseaseComplete;

@Service
public class DiseaseServiceImpl implements DiseaseService {

	@Autowired
	private DiseaseRepository diseaseRepository;

	@Autowired
	private DiseaseDrugService diseaseDrugService;

	@Autowired
	private DisSympService diseaseSymptomService;

	@Override
	public void delete(int id) {
		Disease disease = diseaseRepository.findOne(id);
		diseaseRepository.delete(disease);
	}

	@Override
	public Disease get(int id) {
		return diseaseRepository.findOne(id);
	}

	@Override
	public List<Disease> getAll() {
		return (List<Disease>) diseaseRepository.findAll();
	}

	@Override
	public Disease add(Disease disease) {
		return diseaseRepository.save(disease);
	}

	@Override
	public List<DiseaseComplete> getAllComplete() {		

		List<DiseaseComplete> diseaseCompletes = new ArrayList<DiseaseComplete>();

		List<Disease> diseases = this.getAll();

		for (int i = 0; i < diseases.size(); i++) {

			
			Disease disease = diseases.get(i);
			
			DiseaseComplete diseaseComplete = new DiseaseComplete();
			
			diseaseComplete.setId(disease.getId());
			diseaseComplete.setName(disease.getName());
			diseaseComplete.setDescription(disease.getDescription());
			diseaseComplete.setDepartment(disease.getDepartment());		

			diseaseComplete.setDrugs(diseaseDrugService.getAllDrugsOnlyForDisease(disease));
			diseaseComplete.setSymptoms(diseaseSymptomService.getAllSymptomsForDisease(disease));
			
			/*diseaseDrugService.getAllDrugsForDisease(disease).forEach(
					(diseaseDrug) -> {
						drugs.add(diseaseDrug.getDrug());
					});*/

			/*diseaseSymptomService.findSymptomsForDisease(disease).forEach(
					(diseaseSymptom) -> {
						symptoms.add(diseaseSymptom.getSymptom());
					});*/
			
			diseaseCompletes.add(diseaseComplete);
		}
		
		return diseaseCompletes;

	}

	public List<Disease> findDiseaseByName(String name) {
		return diseaseRepository.findByNameContaining(name);
	}

}
