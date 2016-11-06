package com.softserve.edu.service;

import java.util.List;

import org.hibernate.criterion.Order;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.*;

public class PatientServiceImpl implements PatientService {	
	
	public void addDisease(Card card) {		
		FactoryDAO.getInstance().getCardDAO().addElement(card);
	}
	
	public List<Symptom> showSymptoms(int id) {
		return FactoryDAO.getInstance().getCardSymptomDAO().getAllSymptomsByIdCard(id);		
	}
	
	public List<Drug> showDrugs(int id) {
		return FactoryDAO.getInstance().getCardDrugDAO().getAllDrugsByIdCard(id);		
	}
	
	public User getPatient(int id) {
		User patient = FactoryDAO.getInstance().getUserDAO().getElementByID(id);
		//TODO check
		return patient;
	}	
	
	public List<Card> getCardList(User patient, Order order) {
		
		List<Card> cardList = FactoryDAO.getInstance().getCardDAO().getAllCardsOfUser(patient, order);

		return cardList;
	}
}
