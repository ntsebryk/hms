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
public class DoctorCardServiceImpl implements DoctorCardServise {
	
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#getUserById(java.lang.Integer)
	 */
	@Override
	public User getUserById(Integer idUser) {
		return FactoryDAO.getInstance().getUserDAO().getElementByID(idUser);
	}
	
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#getCardById(java.lang.Integer)
	 */
	@Override
	public Card getCardById(Integer idCard) {
		return FactoryDAO.getInstance().getCardDAO().getElementByID(idCard);
	}
	
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#getCardByDoctor(com.softserve.edu.entity.User, org.hibernate.criterion.Order)
	 */
	@Override
	public List<Card> getCardByDoctor(User doctor, Order order) {
		return FactoryDAO.getInstance().getCardDAO().getAllCardsOfDoctor(order, doctor);
	}
	
	@Override
	public List<Card> getCardByDoctorByActive(User doctor, Boolean isActive, Order order) {
		return FactoryDAO.getInstance().getCardDAO().getAllCardsOfDoctor(order, doctor, isActive);
	}
	
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#getAllDrugs()
	 */
	@Override
	public List<Drug> getAllDrugs() {
		return FactoryDAO.getInstance().getDrugDAO().getAllElements();
	}
	
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#getDrugById(java.lang.Integer)
	 */
	@Override
	public Drug getDrugById(Integer idDrug){
		return FactoryDAO.getInstance().getDrugDAO().getElementByID(idDrug);
	}
	
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#getAllDoctors()
	 */
	@Override
	public List<User> getAllDoctors() {
		return FactoryDAO.getInstance().getUserDAO().getUsersByRole(Role.DOCTOR);
	}
	
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#getSymptomsByCard(com.softserve.edu.entity.Card)
	 */
	@Override
	public List<Symptom> getSymptomsByCard(Card card) {
		return FactoryDAO.getInstance().getCardSymptomDAO().getAllSymptomsByCard(card);
	}
	
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#getDrugByCards(com.softserve.edu.entity.Card)
	 */
	@Override
	public Drug getDrugByCards(Card card) {
		return FactoryDAO.getInstance().getCardDrugDAO().getCardsDrugByCard(card).getDrug(); 
	}
	
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#changeActiveCard(com.softserve.edu.entity.Card)
	 */
	@Override
	public void changeCard(Card card) {
		FactoryDAO.getInstance().getCardDAO().updateElement(card);
	}
    
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#changeDrugCard(com.softserve.edu.entity.CardDrug)
	 */
	@Override
	public void changeDrugCard(CardDrug cardDrug) {
		FactoryDAO.getInstance().getCardDrugDAO().updateElement(cardDrug);
	}
	
	/* (non-Javadoc)
	 * @see com.softserve.edu.service.DoctorCardServise#getCardDrugByCard(com.softserve.edu.entity.Card)
	 */
	@Override
	public CardDrug getCardDrugByCard(Card card) {
		return FactoryDAO.getInstance().getCardDrugDAO().getCardsDrugByCard(card);
	}
}
