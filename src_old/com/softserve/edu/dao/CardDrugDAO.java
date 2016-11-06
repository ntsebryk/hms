package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardDrug;
import com.softserve.edu.entity.Drug;

public interface CardDrugDAO {

	public CardDrug getCardsDrugByCard(Card c);
	public List<Drug> getAllDrugsByIdCard(int idCard);

}