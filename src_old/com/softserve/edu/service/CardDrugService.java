package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.CardDrug;

public class CardDrugService {
	public void addCardDrug(CardDrug cardDrug) {
		FactoryDAO.getInstance().getCardDrugDAO().addElement(cardDrug);
	}

	public void updateCardDrug(CardDrug cardDrug) {
		FactoryDAO.getInstance().getCardDrugDAO().updateElement(cardDrug);
	}

	public CardDrug getCardDrugById(Integer cardDrugId) {
		return FactoryDAO.getInstance().getCardDrugDAO().getElementByID(cardDrugId);
	}

	public List<CardDrug> getAllCardDrugs() {
		return FactoryDAO.getInstance().getCardDrugDAO().getAllElements();
	}

	public void deleteCardDrug(CardDrug cardDrug) {
		FactoryDAO.getInstance().getCardDrugDAO().deleteElement(cardDrug);
	}
}
