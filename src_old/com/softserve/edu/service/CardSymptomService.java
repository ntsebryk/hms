package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.CardSymptom;

public class CardSymptomService {
	public void addCardSymptom(CardSymptom cardSymptom) {
		FactoryDAO.getInstance().getCardSymptomDAO().addElement(cardSymptom);
	}

	public void updateCardSymptom(CardSymptom cardSymptom) {
		FactoryDAO.getInstance().getCardSymptomDAO().updateElement(cardSymptom);
	}

	public CardSymptom getCardSymptomById(Integer cardSymptomId) {
		return FactoryDAO.getInstance().getCardSymptomDAO().getElementByID(cardSymptomId);
	}

	public List<CardSymptom> getAllCardSymptoms() {
		return FactoryDAO.getInstance().getCardSymptomDAO().getAllElements();
	}

	public void deleteCardSymptom(CardSymptom cardSymptom) {
		FactoryDAO.getInstance().getCardSymptomDAO().deleteElement(cardSymptom);
	}
}
