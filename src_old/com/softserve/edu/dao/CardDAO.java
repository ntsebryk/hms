package com.softserve.edu.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.criterion.Order;

import com.softserve.edu.entity.Department;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.Drug;

public interface CardDAO extends ElementDAO<Card> {	
	public void updateMultipleCards(Card... card);
	
	public void updateMultipleCards(User doctor, Card... card);
	
	public List<Card> getAllCardsOfPatient(Order order, User user);
	
	public List<Card> getAllCardsOnDate(Order order, Date date);
	
	public List<Card> getAllCardsOfDoctor(Order order, User doctor);
	
	public List<Card> getAllCardsOfDoctor(Order order, User doctor, Boolean active);
	
	public List<Card> getAllCardsOfDisease(Order order, Disease disease);
	
	public List<Card> getAllCardsForListOfSymptoms(Order order, Symptom... symptom);
	
	public List<Card> getAllCardsForListOfDrugs(Order order, Drug... drug);
	
	public Map<Long, User> getAllDoctorsByLoads(Order order);
	
	public Map<Long, User> getAllDoctorsByDepartmentLoad(Order order, Department department);
	
	public Map<Long, User> getAllDoctorsByLoadFromDate(Order order, Date date);
	
	public Map<Long, User> getAllDoctorsByLoadBetweenDates(Order order, Date startDate, Date endDate);
	
	public Map<Long, User> getAllDoctorsByDepartmentsLoadsBetweenDates(Order order, Department department, Date startDate, Date endDate);
	
	public Map<Long, User> getAllDoctorsByDepartmentsLoadsFromDate(Order order, Department department, Date date);
	
	
}
