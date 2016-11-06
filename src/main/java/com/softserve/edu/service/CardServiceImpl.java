package com.softserve.edu.service;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.User;
import com.softserve.edu.repository.CardRepository;

@Service
public class CardServiceImpl implements CardService {
	private final static int PAGE_SIZE = 8;
		
	@Autowired
	private CardRepository cardRepo;
	
	public Page<Card> getCard(Integer pageNumber) {
        PageRequest request =
            new PageRequest(pageNumber - 1, PAGE_SIZE);
        return cardRepo.findAll(request);
    }

	@Transactional
	public Card findCardById(Integer cardId) {
		return cardRepo.findOne(cardId);
	}

	@Transactional
	public List<Card> findAllCards() {
		return (List<Card>)cardRepo.findAll();
	}
    
	@Transactional
    public Map<Long,User> findAllDoctorsByLoads() {
		Map<Long,User> result = new TreeMap<Long,User>();
//		for (Object[] tuple : cardRepo.returnDoctorsByLoads()) {			
//			result.put((Long)tuple[1],(User)tuple[0]);
//		}
    	return result;
    }

	@Transactional
    public void updateMultipleCards(User doctor, Card... card) {
        if (!isDoctor(doctor)) {
            throw new IllegalArgumentException("Given user must be a doctor.");
        }
//        cardDAO.updateMultipleCards(doctor, card);
    }

	private boolean isDoctor(User doctor) {
        return true;
//        		cardDAO.sessionFactory
//                .getSessionFactory()
//                .openSession()
//                    .createSQLQuery("select 'y' " +
//                            "from users_roles as ur " +
//                            "where id_user = :user " +
//                            "and role = :doctor")
//                    .setParameter("doctor", "DOCTOR")
//                    .setParameter("user", doctor.getId())
//                    .setMaxResults(1)
//                    .uniqueResult()
//                != null;
    }
	
	@Transactional
	public Card findCardByPatient(User user) {
		return cardRepo.findCardByPatient(user);
	}
}
