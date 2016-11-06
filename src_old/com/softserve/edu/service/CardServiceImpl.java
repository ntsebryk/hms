package com.softserve.edu.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.entity.*;

import org.hibernate.criterion.Order;

public class CardServiceImpl implements CardService {
	
	public void addCard(Card card) {
		if (card.getPatient().getStatus() != Status.APPROVED) {
			throw new IllegalArgumentException("This is not accepteble card.");
		}
		FactoryDAO.getInstance().getCardDAO().addElement(card);
	}

	public void updateCard(Card card) {
		if (!isDoctor(card.getDoctor())) {
			throw new IllegalArgumentException("Assigned doctor is fake doctor.");
		}
		FactoryDAO.getInstance().getCardDAO().updateElement(card);
	}

	public Card findCardById(Integer cardId) {
		return FactoryDAO.getInstance().getCardDAO().getElementByID(cardId);
	}

	public List<Card> findAllCards() {
		return FactoryDAO.getInstance().getCardDAO().getAllElements();
	}

	public void deleteCard(Card card) {
		FactoryDAO.getInstance().getCardDAO().deleteElement(card);
	}
	
	public List<Card> findAllCardsOfUser(Order order, User user) {
		return FactoryDAO.getInstance().getCardDAO().getAllCardsOfPatient(order, user);
	}
	
	public List<Card> findAllCardsOfDoctor(Order order, User doctor) {
        if (!isDoctor(doctor)) {
            throw new IllegalArgumentException("Given user must be a doctor.\n");
        }
        return FactoryDAO.getInstance().getCardDAO().getAllCardsOfDoctor(order, doctor);
	}
	
	public List<Card> findAllCardsOfDoctor(Order order, User doctor, Boolean isActive) {
        if (!isDoctor(doctor)) {
            throw new IllegalArgumentException("Given user must be a doctor.\n");
        }
        return FactoryDAO.getInstance().getCardDAO().getAllCardsOfDoctor(order, doctor, isActive);
	}

    public List<Card> findAllCardsOfDrugs(Order order, Drug... drug) {
        return FactoryDAO.getInstance().getCardDAO().getAllCardsForListOfDrugs(order, drug);
    }
    
    public Map<Long,User> findAllDoctorsByLoads(Order order) {
    	return FactoryDAO.getInstance().getCardDAO().getAllDoctorsByLoads(order);
    }

    public Map<Long, User> findAllDoctorsByDepartmentsLoadsFromDate(Order order, Department department, Date date) {
        return FactoryDAO.getInstance().getCardDAO().getAllDoctorsByDepartmentsLoadsFromDate(order, department, date);
    }

    public void updateMultipleCards(User doctor, Card... card) throws IllegalArgumentException {
        if (!isDoctor(doctor)) {
            throw new IllegalArgumentException("Given user must be a doctor.");
        }
        FactoryDAO.getInstance().getCardDAO().updateMultipleCards(doctor, card);
    }
    
    

    @Override
	public void updateMultipleCards(Card... card) {
		for (Card c : card) {
			if (!isDoctor(c.getDoctor())) {
				throw new IllegalArgumentException("Assigned doctor is not real doctor!");
			}
			if (c.getPatient().getStatus() != Status.APPROVED) {
				throw new IllegalArgumentException("Pacient is not active!");
			}
		}
		FactoryDAO.getInstance().getCardDAO().updateMultipleCards(card);
	}	

	@Override
	public List<Card> findAllCardsForListOfSymptoms(Order order,
			Symptom... symptom) {
		return FactoryDAO.getInstance().getCardDAO().getAllCardsForListOfSymptoms(order, symptom);
	}

	@Override
	public List<Card> findAllCardsForListOfDrugs(Order order, Drug... drug) {
		return FactoryDAO.getInstance().getCardDAO().getAllCardsForListOfDrugs(order, drug);
	}

	@Override
	public Map<Long, User> findAllDoctorsByLoadFromDate(Order order, Date date) {
		return FactoryDAO.getInstance().getCardDAO().getAllDoctorsByLoadFromDate(order, date);
	}

	@Override
	public Map<Long, User> findAllDoctorsByDepartmentLoad(Order order,
			Department department) {
		return FactoryDAO.getInstance().getCardDAO().getAllDoctorsByDepartmentLoad(order, department);
	}

	@Override
	public Map<Long, User> findAllDoctorsByLoadBetweenDates(Order order,
			Date startDate, Date endDate) {
		return FactoryDAO.getInstance().getCardDAO().getAllDoctorsByLoadBetweenDates(order, startDate, endDate);
	}

	@Override
	public Map<Long, User> findAllDoctorsByDepartmentsLoadsBetweenDates(
			Order order, Department department, Date startDate, Date endDate) {
		return FactoryDAO.getInstance().getCardDAO().getAllDoctorsByDepartmentsLoadsBetweenDates(order, department, startDate, endDate);
	}

	private boolean isDoctor(User doctor) {
        return HibernateUtil
                .getSessionFactory()
                .openSession()
                    .createSQLQuery("select 'y' " +
                            "from users_roles as ur " +
                            "where id_user = :user " +
                            "and role = :doctor")
                    .setParameter("doctor", "DOCTOR")
                    .setParameter("user", doctor.getId())
                    .setMaxResults(1)
                    .uniqueResult()
                != null;
    }
}
