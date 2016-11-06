package com.softserve.edu.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.ArrayList;

import com.softserve.edu.entity.Card;
import com.softserve.edu.entity.Department;
import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.Drug;
import com.softserve.edu.entity.Symptom;
import com.softserve.edu.entity.User;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

public class CardDAOImpl extends ElementDAOImpl<Card> implements CardDAO {

    public CardDAOImpl() {
        super(Card.class);
    }
    
	public void updateMultipleCards(User doctor, Card... card) {
		Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            for (Card c : card) {
            	c.setDoctor(doctor);
            	session.update(c);
            }
            session.getTransaction().commit();
        } catch(Exception e) {
        	session.getTransaction().rollback();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
	} 
    
	@SuppressWarnings("unchecked")
	public List<Card> getAllCardsOfPatient(Order order, User user) {
    	Session session = null;
        List<Card> queryResult = new ArrayList<>();
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Criteria query = session.createCriteria(Card.class)
								            		.add(Restrictions.eq("patient", user))
								            		.addOrder(order);
            queryResult = (List<Card>) query.list();                  
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }        
        return queryResult;
    }
    
	@SuppressWarnings("unchecked")
	public List<Card> getAllCardsOnDate(Order order, Date date) {
		Session session = null;
        List<Card> queryResult = new ArrayList<>();
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Criteria query = session.createCriteria(Card.class)
								            		.add(Restrictions.eq("date", date))
								            		.addOrder(order);            
            queryResult = (List<Card>) query.list();                   
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }        
        return queryResult;
    }
	
	@SuppressWarnings("unchecked")
	public List<Card> getAllCardsOfDoctor(Order order, User doctor) {		
		Session session = null;
        List<Card> queryResult = new ArrayList<Card>();
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Criteria query = session.createCriteria(Card.class)
								            		.add(Restrictions.eq("doctor", doctor))
								            		.addOrder(order);
            queryResult = (List<Card>) query.list();                   
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }        
        return queryResult;
	}
	
	@SuppressWarnings("unchecked")
	public List<Card> getAllCardsOfDoctor(Order order, User doctor, Boolean active) {		
		Session session = null;
        List<Card> queryResult = new ArrayList<Card>();
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Criteria query = session.createCriteria(Card.class)
								            		.add(Restrictions.eq("doctor", doctor))
								            		.add(Restrictions.eq("isActive",active))
								            		.addOrder(order);
            queryResult = (List<Card>) query.list();                   
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }        
        return queryResult;
	}
	
	@SuppressWarnings("unchecked")
	public List<Card> getAllCardsOfDisease(Order order, Disease disease) {
		Session session = null;
        List<Card> queryResult = new ArrayList<>();
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Criteria query = session.createCriteria(Card.class)
								            		.add(Restrictions.eq("disease", disease))
								            		.addOrder(order);            
            queryResult = (List<Card>) query.list();                  
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }        
        return queryResult;
	}

	@SuppressWarnings("unchecked")
	public List<Card> getAllCardsForListOfSymptoms(Order order, Symptom... symptom) {
		Session session = null;
        List<Card> queryResult = new ArrayList<>();
        
        try {
        	System.out.println(order);
            session = HibernateUtil.getSessionFactory().openSession();
        
            Query query = session
            		.createQuery("select cs.card "
	            				+ "from CardSymptom as cs where "
	            				+ "id_symptom in :symptom "
	            				+ "group by cs.card "
	            				+ "having count(cs.card) = :symptomCount "
	            				+ "order by :order")
            		.setParameterList("symptom", symptom) 
            		.setParameter("order", order.toString())
            		.setParameter("symptomCount"
            				, Long.parseLong(Integer.toString(symptom.length)));
            queryResult = (List<Card>) query.list();                 
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }        
        return queryResult;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Map<Long, User> getAllDoctorsByLoads(Order order) {
		Session session = null;
        Map<Long, User> queryResult = new TreeMap<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session
                    .createQuery("select c.doctor as doctor, count(*) as load "
	                            + "from Card as c "
	                            + "group by c.doctor "
	                            + "order by :order")
                    .setParameter("order", order.toString());
            for(Object[] queryEntry : (List<Object[]>) query.list()) {
                queryResult.put((Long) queryEntry[1], (User) queryEntry[0]);
            }
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return queryResult;
	}

	@SuppressWarnings("unchecked")
	public List<Card> getAllCardsForListOfDrugs(Order order, Drug... drug) {
		Session session = null;
        List<Card> queryResult = new ArrayList<Card>();
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
           
            Query query = session
            		.createQuery("select cs.card "
	            				+ "from CardDrug as cs where "
	            				+ "id_drug in :drug "
	            				+ "group by cs.card "	            				
	            				+ "having count(cs.card) = :drugCount "
	            				+ "order by :order")
            		.setParameterList("drug", drug)
            		.setParameter("order", order.toString())
            		.setParameter("drugCount"
            				, Long.parseLong(Integer.toString(drug.length)));
            queryResult = (List<Card>) query.list();                
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }        
        return queryResult;
	}

    @SuppressWarnings("unchecked")
	@Override
	public Map<Long, User> getAllDoctorsByLoadFromDate(Order order, Date date) {
    	Session session = null;
        Map<Long, User> queryResult = new TreeMap<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session
                    .createQuery("select c.doctor as doctor, count(*) as load "
	                            + "from Card as c "
	                            + "where c.date = :date "
	                            + "group by c.doctor "
	                            + "order by :order")
                    .setParameter("date", date)
                    .setParameter("order", order.toString());
            for(Object[] queryEntry : (List<Object[]>) query.list()) {
                queryResult.put((Long) queryEntry[1], (User) queryEntry[0]);
            }
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return queryResult;
	}

	@Override
	public void updateMultipleCards(Card... card) {
		Session session = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            for (Card c : card) {
            	session.update(c);
            }
            session.getTransaction().commit();
        } catch(Exception e) {
        	session.getTransaction().rollback();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<Long, User> getAllDoctorsByDepartmentLoad(Order order,
			Department department) {
		Session session = null;
        Map<Long, User> queryResult = new TreeMap<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session
                    .createQuery("select c.doctor as doctor, count(*) as load "
	                            + "from Card as c "
	                            + "where c.doctor.department = :department "
	                            + "group by c.doctor "
	                            + "order by :order")
                    .setParameter("department", department)
                    .setParameter("order", order.toString());
            for(Object[] queryEntry : (List<Object[]>) query.list()) {
                queryResult.put((Long) queryEntry[1], (User) queryEntry[0]);
            }
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return queryResult;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<Long, User> getAllDoctorsByLoadBetweenDates(Order order,
			Date startDate, Date endDate) {
		Session session = null;
        Map<Long, User> queryResult = new TreeMap<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session
                    .createQuery("select c.doctor as doctor, count(*) as load "
	                            + "from Card as c "
	                            + "where c.date >= :startDate "
	                            + "and c.date <= :endDate"
	                            + "group by c.doctor "
	                            + "order by :order")
                    .setParameter("startDate", startDate)
                    .setParameter("endDate", endDate)
                    .setParameter("order", order.toString());
            for(Object[] queryEntry : (List<Object[]>) query.list()) {
                queryResult.put((Long) queryEntry[1], (User) queryEntry[0]);
            }
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return queryResult;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<Long, User> getAllDoctorsByDepartmentsLoadsBetweenDates(
			Order order, Department department, Date startDate, Date endDate) {
		Session session = null;
        Map<Long, User> queryResult = new TreeMap<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session
                    .createQuery("select c.doctor as doctor, count(*) as load "
	                            + "from Card as c "
	                            + "where c.doctor.department = :department "
	                            + "and c.date >= :startDate "
	                            + "and c.date <= :endDate"
	                            + "group by c.doctor "
	                            + "order by :order")
                    .setParameter("department", department)
                    .setParameter("startDate", startDate)
                    .setParameter("endDate", endDate)
                    .setParameter("order", order.toString());
            for(Object[] queryEntry : (List<Object[]>) query.list()) {
                queryResult.put((Long) queryEntry[1], (User) queryEntry[0]);
            }
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return queryResult;
	}

	@SuppressWarnings("unchecked")
	public Map<Long, User> getAllDoctorsByDepartmentsLoadsFromDate(Order order, Department department,
			Date date) {
		Session session = null;
        Map<Long, User> queryResult = new TreeMap<>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session
                    .createQuery("select c.doctor as doctor, count(*) as load "
	                            + "from Card as c "
	                            + "where c.doctor.department = :department "
	                            + "and c.date >= :date "
	                            + "group by c.doctor "
	                            + "order by :order")
                    .setParameter("department", department)
                    .setParameter("date", date)
                    .setParameter("order", order.toString());
            for(Object[] queryEntry : (List<Object[]>) query.list()) {
                queryResult.put((Long) queryEntry[1], (User) queryEntry[0]);
            }
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return queryResult;
	}    
}
