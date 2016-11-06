package com.softserve.edu.dao;

import java.util.List;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
//import org.hibernate.mapping.List;


import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardSymptom;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.CardDrug;
import com.softserve.edu.entity.Symptom;

public class CardDrugDAOImpl extends ElementDAOImpl<CardDrug> implements CardDrugDAO {

    public CardDrugDAOImpl() {
        super(CardDrug.class);
    }
    
    /* (non-Javadoc)
	 * @see com.softserve.edu.dao.CardDrugDao#getCardsDrugByCard(com.softserve.edu.entity.Card)
	 */
    @Override
	public CardDrug getCardsDrugByCard(Card c) {
    	Session session = null;
    	ArrayList<CardDrug> lcd = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            lcd = (ArrayList<CardDrug>)session.createCriteria(CardDrug.class)
                    .add(Restrictions.eq("card", c)).list();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return lcd.get(0);
    }
    
    public List<Drug> getAllDrugsByIdCard(int idCard) {
    	Session session = null;
    	List<CardDrug> cardDrug;
    	List<Drug> drugList = new ArrayList<Drug>();
    	try {
    		session = HibernateUtil.getSessionFactory().openSession();
    		cardDrug = (List<CardDrug>) session.createCriteria(CardDrug.class)
    				.add(Restrictions.eq("idCard", idCard)).list();
    		for(CardDrug cs : cardDrug) {
    			drugList.add(cs.getDrug());
    		}
    	} finally {
    		if ((session != null) && (session.isOpen())) {
                session.close();
            }
    	}
    	return drugList;
    }
}
