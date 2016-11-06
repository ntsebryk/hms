package com.softserve.edu.service;

import java.util.List;

import org.hibernate.criterion.Order;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardDrug;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.User;

public interface DoctorCardServise {

	public User getUserById(Integer idUser);

	public Card getCardById(Integer idCard);

	public List<Card> getCardByDoctor(User doctor, Order order);
	
	public List<Card> getCardByDoctorByActive(User doctor, Boolean isActive, Order order);

	public List<Drug> getAllDrugs();

	public Drug getDrugById(Integer idDrug);

	public List<User> getAllDoctors();

	public List<Symptom> getSymptomsByCard(Card card);

	public Drug getDrugByCards(Card card);

	public void changeCard(Card card);

	public void changeDrugCard(CardDrug cardDrug);

	public CardDrug getCardDrugByCard(Card card);

}