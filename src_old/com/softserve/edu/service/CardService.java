package com.softserve.edu.service;

import com.softserve.edu.entity.*;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.criterion.Order;

/**
 * Created by donistc on 20.09.14.
 */
public interface CardService {
    public void addCard(Card card);

    public void updateCard(Card card);

    public Card findCardById(Integer cardId);

    public List<Card> findAllCards();

    public void deleteCard(Card card);
    
    public void updateMultipleCards(Card... card);

    public void updateMultipleCards(User doctor, Card... card);

    public List<Card> findAllCardsOfUser(Order order, User user);
    
    public List<Card> findAllCardsOfDoctor(Order order, User doctor);
  
    public List<Card> findAllCardsOfDoctor(Order order, User doctor, Boolean isActive);

    public List<Card> findAllCardsForListOfSymptoms(Order order, Symptom... symptom);

    public List<Card> findAllCardsForListOfDrugs(Order order, Drug... drug);
    
    public Map<Long, User> findAllDoctorsByLoads(Order order);
    
    public Map<Long, User> findAllDoctorsByLoadFromDate(Order order, Date date);
    
    public Map<Long, User> findAllDoctorsByDepartmentLoad(Order order, Department department);    
	
	public Map<Long, User> findAllDoctorsByLoadBetweenDates(Order order, Date startDate, Date endDate);

    public Map<Long, User> findAllDoctorsByDepartmentsLoadsFromDate(Order order, Department department, Date date);	
	
	public Map<Long, User> findAllDoctorsByDepartmentsLoadsBetweenDates(Order order, Department department, Date startDate, Date endDate);
}
