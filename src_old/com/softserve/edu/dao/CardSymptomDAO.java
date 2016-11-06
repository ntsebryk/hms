package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardSymptom;
import com.softserve.edu.entity.Symptom;

public interface CardSymptomDAO  extends ElementDAO<CardSymptom> {

	public List<Symptom> getAllSymptomsByCard(Card c);
	public List<Symptom> getAllSymptomsByIdCard(int idCard);

}