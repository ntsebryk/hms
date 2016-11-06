package com.softserve.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.User;

import org.springframework.stereotype.Repository;

@Repository
public interface CardRepository extends JpaRepository<Card, Integer> {
	
	public Card findCardByPatient(User user);
}
