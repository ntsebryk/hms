package com.softserve.edu.service;

import java.util.ArrayList;
import java.util.List;









import org.hibernate.criterion.Order;

//import com.softserve.edu.dao.DaoFactory;
import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.CardDrug;
import com.softserve.edu.entity.CardSymptom;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.UserRole;
import com.softserve.edu.entity.Role;

//import com.softserve.edu.entity.Disease;
/**
 * @author Turko
 */
public class DoctorCardService {
	
	public User getUserById(Integer idUser) {
		return FactoryDAO.getInstance().getUserDAO().getElementByID(idUser);
	}
	
	public Card getCardById(Integer idCard) {
		return FactoryDAO.getInstance().getCardDAO().getElementByID(idCard);
	}
	
	public List<Card> getCardByDoctor(User doctor, Order order) {
		return FactoryDAO.getInstance().getCardDAO().getAllCardsOfDoctor(order, doctor);
	}
	
	public List<Drug> getAllDrugs() {
		return FactoryDAO.getInstance().getDrugDAO().getAllElements();
	}
	
	public Drug getDrugById(Integer idDrug){
		return FactoryDAO.getInstance().getDrugDAO().getElementByID(idDrug);
	}
	
	public List<User> getAllDoctors() {
		return FactoryDAO.getInstance().getUserDAO().getUsersByRole(Role.DOCTOR);
	}
	
	public List<Symptom> getSymptomsByCard(Card card) {
		return FactoryDAO.getInstance().getCardSymptomDAO().getAllSymptomsByCard(card);
	}
	
	/*public Drug getDrugByCard(Card card) {
		return FactoryDAO.getInstance().getCardDrugDAO().getDrugByCard(card);
	}*/
	
	public void changeActiveCard(int idCard) {
		DoctorCardService dcs = new DoctorCardService();
		Integer ic = new Integer(idCard);
		Card c = dcs.getCardById(ic);
		Boolean tr = new Boolean(true);
		Boolean fl = new Boolean(false);
		if ((boolean)c.getIsActive()) {
			c.setIsActive(fl);
		} else {
			c.setIsActive(tr);
		}
		try {
		    FactoryDAO.getInstance().getCardDAO().updateElement(c);
		} catch (Exception e) {
		    e.printStackTrace();
		}
	}
    
	public void changeDrugCard(int idCard, int idDrug) {
		Integer ic = new Integer(idCard);
		Integer idr = new Integer(idDrug);
		CardDrug d = FactoryDAO.getInstance().getCardDrugDAO().getElementByID(ic);
		Drug newDrug = getDrugById(idr);
		d.setDrug(newDrug);
		FactoryDAO.getInstance().getCardDrugDAO().updateElement(d);
	}
}
