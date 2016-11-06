package com.softserve.edu.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardDrug;
import com.softserve.edu.entity.CardSymptom;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.Symptom;

public class CardSymptomDAOImpl extends ElementDAOImpl<CardSymptom> implements CardSymptomDAO {

    public CardSymptomDAOImpl() {
        super(CardSymptom.class);
    }
    
    /* (non-Javadoc)
	 * @see com.softserve.edu.dao.CardSymptomDAO#getAllSymptomsByCard(com.softserve.edu.entity.Card)
	 */
    @Override
	public List<Symptom> getAllSymptomsByCard(Card c) {
    	Session session = null;
        List<Symptom> asbc = new ArrayList<Symptom>();
        List<CardSymptom> asbcs = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            asbcs = (List<CardSymptom>) session.createCriteria(CardSymptom.class)
                    .add(Restrictions.eq("card", c)).list();
            for (CardSymptom cs: asbcs) {
            	asbc.add(cs.getSymptom()); 
            }
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return asbc;
    }
    
    public List<Symptom> getAllSymptomsByIdCard(int idCard) {
    	Session session = null;
    	List<CardSymptom> cardSymptom;
    	List<Symptom> symptomList = new ArrayList<Symptom>();
    	try {
    		session = HibernateUtil.getSessionFactory().openSession();
    		cardSymptom = (List<CardSymptom>) session.createCriteria(CardSymptom.class)
    				.add(Restrictions.eq("idCard", idCard)).list();
    		for(CardSymptom cs : cardSymptom) {
    			symptomList.add(cs.getSymptom());
    		}
    	} finally {
    		if ((session != null) && (session.isOpen())) {
                session.close();
            }
    	}
    	return symptomList;
    }

}
