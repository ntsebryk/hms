package com.softserve.edu.service;

import java.util.List;

import org.hibernate.criterion.Order;

import com.softserve.edu.entity.*;


public interface PatientService {
			
	public void addDisease(Card card);
	
	public List<Symptom> showSymptoms(int id);
	
	public List<Drug> showDrugs(int id);
	
	public User getPatient(int id);
	
	public List<Card> getCardList(User patient, Order order);

}
