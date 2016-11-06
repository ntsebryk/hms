package com.softserve.edu.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.User;

public interface CardService {
	
	public Page<Card> getCard(Integer pageNumber);	

    public Card findCardById(Integer cardId);

    public List<Card> findAllCards();
    
    public void updateMultipleCards(User doctor, Card... card);
    
    public Map<Long, User> findAllDoctorsByLoads();
    
    public Card findCardByPatient(User user);
    
}
