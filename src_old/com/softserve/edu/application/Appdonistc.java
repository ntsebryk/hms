package com.softserve.edu.application;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.hibernate.Query;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.CardService;
import com.softserve.edu.service.CardServiceImpl;

public class Appdonistc {
	public static void main(String[] args) {
		/*System.out.println("Retrieving all cards for given patient");
		List<User> users = FactoryDAO.getInstance().getUserDAO().getAllElements();
	    CardService cs = new CardServiceImpl();
	    for (User u : users) {
	    	System.out.println("Patient: " 
	    				+ u.getFirstName() 
	    				+ " " 
	    				+ u.getLastName());
	    	List<Card> cards = cs.getAllCardsOfUser(u);
	    	if(!cards.isEmpty()) {
	    		for (Card card : cs.getAllCardsOfUser(u)) {
		    		System.out.println(card);
		    	}
	    	} else {
	    		System.out.println("Patient is healthy as a horse.");
	    	}
	    		    	
	    } 
	    
	    System.out.println("Finding all cards for exact collection of symptoms.");
	    List<Symptom> symptoms = FactoryDAO.getInstance().getSymptomDAO().getAllElements();
	    for (Symptom ss : symptoms) {
	    	System.out.println(ss.getIdSymptom() + " " 
	    			+ ss.getName() + "  "
	    			+ ss.getDescription() );
	    }
	    System.out.println("Testing retrieving cards with given symptoms:");
	    System.out.println("Symptom 1: " 
	    			+ symptoms.get(1).getName());
	    System.out.println("Symptom 2: " 
					+ symptoms.get(4).getName());
	    for (Card card : cs.getAllCardsOfSymptoms(symptoms.get(1), symptoms.get(4))) {
	    	System.out.println(card);
	    }
	    
	    System.out.println("Assign random doctor for random card.");
	    System.out.println("Chosing random card ...");
	    List<Card> cards = cs.getAllCards();
	    Card viktimCard = cards.get(new Random().nextInt(cards.size()));
	    System.out.println(viktimCard);
	    System.out.println("Choosing random doctor ...");	    
	    Query query = HibernateUtil
	    		.getSessionFactory()
	    		.openSession()
	    		.createSQLQuery("select id_user "
	    				+ "from users_roles "
	    				+ "where id_role = (select r.id_role "
                        + "from roles as r "
                        + "where r.role_name = :doctor)")
                .setParameter("doctor", "Doctor");
	    ArrayList<User> doctors = new ArrayList<User>();
	    for (Object o : query.list()) {
	    	doctors.add(FactoryDAO
	    			.getInstance()
	    			.getUserDAO()
	    			.getElementByID((Integer) o));
	    }
	    User doctor = doctors.get(new Random().nextInt(doctors.size()));
	    cs.updateCard(doctor, viktimCard);
	    System.out.println(viktimCard);*/
	    
    }
}
