package com.softserve.edu.application;

import java.util.List;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.service.DiseaseSymptomEditServiseImpl;
import com.softserve.edu.service.FillingDBServiceImpl;

public class ApplIvaniv {

	public static void main(String[] args) {

		FillingDBServiceImpl service = new FillingDBServiceImpl();
		service.fillDataFromScript("./resources/sqlScripts/fillDB.sql");
		showServiseFunctional();
		
	}

	public static void showServiseFunctional() {
		Disease disease = FactoryDAO.getInstance().getDiseaseDAO()
				.getElementByID(1);
		DiseaseSymptom ds = FactoryDAO.getInstance().getDiseaseSymptomDAO()
				.getElementByID(2);
		Symptom symptom = FactoryDAO.getInstance().getSymptomDAO().getElementByID(3);

		DiseaseSymptomEditServiseImpl dsServise = new DiseaseSymptomEditServiseImpl();
		
		System.out.println(disease);
		
		System.out.println("\nSymptoms for this disease: \n\n");
		List<DiseaseSymptom> dsl = dsServise.findSymptomsForDisease(disease);
		
		for (DiseaseSymptom dsVar : dsl) {
			System.out.println(dsVar);
		}
		
		
		System.out.println("\nDeleted symptom for this disease: \n\n");
		dsServise.getDisSymptEditImplDAO().deleteElement(ds);

		dsl = dsServise.findSymptomsForDisease(disease);
		for (DiseaseSymptom dsVar : dsl) {
			System.out.println(dsVar);
		}
		
		
		System.out.println("\nAddeded symptom for this disease: \n\n");
		dsServise.getDisSymptEditImplDAO().addElement(ds);

		dsl = dsServise.findSymptomsForDisease(disease);
		for (DiseaseSymptom dsVar : dsl) {
			System.out.println(dsVar);
		}
		
		
		System.out.println("\nGet symptom list sorted by name: \n");
		List<Symptom> ls = dsServise.getSimptomListSortedByName();
		for (Symptom s : ls) {
			System.out.println(s);
		}
		
		
		System.out.println("\nFind symptom by name: \n");
		System.out.println(dsServise.findSymptomByName("breath"));
		
		System.out.println("\nFind diseases for symptom : /n" + symptom + "\n\n");
		List<Disease> dl = dsServise.findDiseasesforSymptom(symptom);
		for (Disease d : dl){
			System.out.println("-----------------------------------------------------\n"
					     + d + "\n");
		}
		
		
		
	}

}
