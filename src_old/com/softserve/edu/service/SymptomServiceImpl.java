package com.softserve.edu.service;

import java.util.ArrayList;
import java.util.List;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;

public class SymptomServiceImpl implements SymptomService {

    @Override
    public List<Symptom> findAllSymptoms() {
	return FactoryDAO.getInstance().getSymptomDAO().getAllElements();
    }

    @Override
    public void addSymptom(Symptom symptom) {
	FactoryDAO.getInstance().getSymptomDAO().addElement(symptom);
    }

    @Override
    public Symptom findSymptomById(Integer id) {
	Symptom symptom = FactoryDAO.getInstance().getSymptomDAO()
		.getElementByID(id);
	return symptom;
    }

    @Override
    public void deleteSymptom(Symptom symptom) {
	FactoryDAO.getInstance().getSymptomDAO().deleteElement(symptom);

    }

    @Override
    public void editSymptom(Symptom symptom) {
	FactoryDAO.getInstance().getSymptomDAO().updateElement(symptom);
    }

    @Override
    public List<Symptom> findSymptomsByName(String name) {
	return FactoryDAO.getInstance().getSymptomDAO().getSymptomsByName(name);
    }

    @Override
    public List<Symptom> findAllSymptomsByAscendingOrder() {
	return FactoryDAO.getInstance().getSymptomDAO().orderByNameAscending();
    }

    @Override
    public List<Symptom> findAllSymptomsByDescendingOrder() {
	return FactoryDAO.getInstance().getSymptomDAO().orderByNameDescending();
    }

    @Override
    public List<Symptom> findAllSymptomsByDisease(Disease disease) {
	return FactoryDAO.getInstance().getSymptomDAO().getSymptomsByDisease(disease);
    }
}
