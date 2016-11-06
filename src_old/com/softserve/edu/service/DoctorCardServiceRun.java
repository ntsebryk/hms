package com.softserve.edu.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.Order;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.CardDrug;
/**
 * @author Turko
 */
public class DoctorCardServiceRun {
	DoctorCardServise dcs = new DoctorCardServiceImpl();
	DiseaseService ds = new DiseaseServiceImpl();
	
	public void showAllDoctors() {
		List<User> allDoctors = dcs.getAllDoctors();
		System.out.println("Lis all doctors");
		if (!allDoctors.isEmpty()) {
            for (User u : allDoctors) {
                System.out.println("ID: " + u.getId() + " Doctor: " + u.getFirstName() + " " + u.getLastName());
                System.out.println("   Department: " + u.getDepartment().getName());
                System.out.println("");
            }
        } else {
            System.out.println("There are no doctors.");
        }
	}
	
	public void showCards(List<Card> doctorCard, User doctor, String filter) {
		System.out.println("Doctor: " + doctor.getFirstName() + " " + doctor.getLastName());
		System.out.println("Department: " + doctor.getDepartment().getName() + "\n");
		String isActive;
		Boolean tr = new Boolean(true);
		if (!doctorCard.isEmpty()) {
            for (Card c : doctorCard) {
            	if (c.getIsActive().equals(tr)) {
        			isActive = "Ill";
        		} else {
        			isActive = "Cured";
        		}
                System.out.println("ID: " + c.getIdCard() + " Patient: " + c.getPatient().getFirstName() + " " + c.getPatient().getLastName());
                System.out.println("Date:" + c.getDate() + /*"\n Disease: " + c.getDisease().getName() + */"\n Is active: " + isActive);
                System.out.println("");
            }
        } else {
            System.out.println("There are no " + filter + " patients in this doctor.");
        }
	}
	
	public void showCardByDoctor(int idDoctor) {
	    Integer i = new Integer(idDoctor);
		User doctor = dcs.getUserById(i);
		Order order = Order.asc("date");
		List<Card> doctorCard = dcs.getCardByDoctor(doctor, order);
		showCards(doctorCard, doctor, "");
	}
	
	public void showActiveCardByDoctor(int idDoctor) {
	    Boolean isActive = new Boolean(true);
		Integer i = new Integer(idDoctor);
		User doctor = dcs.getUserById(i);
		Order order = Order.asc("date");
		List<Card> doctorCard = dcs.getCardByDoctorByActive(doctor, isActive, order);
		showCards(doctorCard, doctor, "");
	}
	
	public void showNotActiveCardByDoctor(int idDoctor) {
	    Boolean isActive = new Boolean(false);
		Integer i = new Integer(idDoctor);
		User doctor = dcs.getUserById(i);
		Order order = Order.asc("date");
		List<Card> doctorCard = dcs.getCardByDoctorByActive(doctor, isActive, order);
		showCards(doctorCard, doctor, "");
	}
	
	public boolean isActive(int idCard) {
		Integer ic = new Integer(idCard);
		Card c = dcs.getCardById(ic);
		return (boolean)c.getIsActive();
	}
	
	public void changeActive(int idCard) {
		Integer ic = new Integer(idCard);
		Card c = dcs.getCardById(ic);
		Boolean tr = new Boolean(true);
		Boolean fl = new Boolean(false);
		if ((boolean)c.getIsActive()) {
			c.setIsActive(fl);
		} else {
			c.setIsActive(tr);
		}
		dcs.changeCard(c);
	}
	
	public void changeDiseaseInCard(int idCard, int idDisease) {
		Integer ic = new Integer(idCard);
		Card c = dcs.getCardById(ic);
		Disease disease = ds.getById(idDisease);
		c.setDisease(disease);
		dcs.changeCard(c);
	}
	
	public void showPatienDiseaseHistory(int idCard) {
		Integer ic = new Integer(idCard);
		String disease;
		Card c = dcs.getCardById(ic);
		User patient = c.getPatient();
		List<Symptom> symptomsByCardId = dcs.getSymptomsByCard(c);
		Boolean tr = new Boolean(true);
		String isActive;
		if (c.getIsActive().equals(tr)) {
			isActive = "Ill";
		} else {
			isActive = "Cured";
		}
		try {
			disease = c.getDisease().getName();
		} catch(NullPointerException e) {
			disease = "Disease is not defined";
		}
		//System.out.println(patient);
		System.out.println("ID: " + idCard + " Patient: " + patient.getFirstName() + " " + patient.getLastName());
        System.out.println("Date:" + c.getDate() + "\n Disease: " + disease + "\n Is active: " + isActive);
        
        System.out.println("\n Symptoms: ");
        if (!symptomsByCardId.isEmpty()) {
        	int i = 1;
            for (Symptom s : symptomsByCardId) {
                System.out.println(i + ": " + s.getName());
                i++;
            }
        } else {
            System.out.println("There are no symptoms of this patient.");
        }
        
        try {
            String drug = dcs.getDrugByCards(c) .getName();
            System.out.println("\nDrugs: " + drug);
        } catch(Exception e) {
        	System.out.println("\nDrugs: " + " not assigned yet");
        }
    }
	
	public void changeDrug(int idCard, int idDrug) {
		Integer ic = new Integer(idCard);
		Integer idr = new Integer(idDrug);
		Card c = dcs.getCardById(ic);
		Drug d = dcs.getDrugById(idr);
		CardDrug cd = dcs.getCardDrugByCard(c);
		cd.setDrug(d);
		dcs.changeDrugCard(cd);
	}
	
	public void showDrugDescription(int idCard) { 
		Integer ic = new Integer(idCard);
		Card c = dcs.getCardById(ic);
		try {
            String drug = dcs.getDrugByCards(c).getName();
		    System.out.println("\nDrugs: " + drug);
	        System.out.println("Drugs description: " + dcs.getDrugByCards(c).getDescription());
		} catch(NullPointerException e) {
        	System.out.println("\nDrugs: " + " not assigned yet");
        }
	}
	
	public void showAllDrugs() {
		List<Drug> allDr = dcs.getAllDrugs();
		System.out.println("Lis of all drugs");
		if (!allDr.isEmpty()) {
            for (Drug d : allDr) {
                System.out.println("ID: " + d.getIdDrug() + " Drug coeficient: " + d.getCoeficient() + "   Drug name: " + d.getName());
                System.out.println("   Drug description: " + d.getDescription());
                System.out.println("");
            }
        } else {
            System.out.println("There are no drugs.");
        }
	}
	
	public void showAllDisease() {
		List<Disease> allDs = ds.getAll();
		System.out.println("Lis of all diseases");
		if (!allDs.isEmpty()) {
            for (Disease d : allDs) {
                System.out.println(d);
                System.out.println("");
            }
        } else {
            System.out.println("There are no diseases.");
        }
	}
	
}
