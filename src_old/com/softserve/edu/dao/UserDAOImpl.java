package com.softserve.edu.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManagerFactory;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import com.softserve.edu.application.khrun.ConsoleRead;
import com.softserve.edu.application.khrun.PrintOutReturnedValues;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;

public class UserDAOImpl extends ElementDAOImpl<User> implements UserDAO {

    // instantiate ElementDAOImpl with specified entity
    public UserDAOImpl() {
        super(User.class);
    }

    @Override
    public List<User> getListOfUserByStatus(Enum<Status> status) {
        Session session = null;
        List<User> listOfUserByStatus = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            listOfUserByStatus = (List<User>) session
                    .createCriteria(User.class)
                    .add(Restrictions.eq("status", status)).list();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return listOfUserByStatus;
    }

    @Override
    public List<User> getListOfUserByArguments(Map<String, String> selectByArguments) {
        Session session = null;
        List<User> listOfUserByFields = null;

        try {
        	session = HibernateUtil.getSessionFactory().openSession();
        	
        	Criteria criteria = session.createCriteria(User.class);
        	Disjunction disjunction = Restrictions.disjunction();
        	
        	Iterator<Map.Entry<String, String>> iteratorMap = selectByArguments.entrySet().iterator();
        	while(iteratorMap.hasNext()) {
        		Map.Entry<String, String> entry = iteratorMap.next();
        		String column = entry.getKey();
        		String value = entry.getValue();
        		disjunction.add(Restrictions.ilike(column, value, MatchMode.ANYWHERE));
        	}
        	
        	criteria.add(disjunction);
        	
        	listOfUserByFields = criteria.list();
            
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }

        return listOfUserByFields;
    }

    @Override
    public void changeUserStatus(Integer idUser, int newStatus) {
        Session session = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();

            Transaction transaction = session.beginTransaction();

            User user = FactoryDAO.getInstance().getUserDAO()
                    .getElementByID(idUser);
            user.setStatus(Status.values()[newStatus - 1]);
           
            session.update("status", user);

            transaction.commit();
        } catch (NullPointerException npe){
        	System.out.println("There is no user with id " + idUser);
        } catch (ArrayIndexOutOfBoundsException outOfBounds) {
        	System.out.println("There is no status with id " + newStatus);
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }

    @Override
    public List<User> getUsersByRole(Role role) {
        Session session = null;
        List<User> resultList = new ArrayList<User>();
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session.createQuery(
                    "select ur.user " + "from UserRole ur where ur.role = :r")
                    .setParameter("r", role);
            for (Object o : query.list()) {
                resultList.add((User) o);
            }

        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return resultList;
    }

    @Override
    public boolean existsWithLogin(String login) {
        Session session = null;
        List<User> resultList = new ArrayList<User>();
        boolean result = false;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            resultList = session.createCriteria(User.class)
                    .add(Restrictions.eq("login", login)).list();
            if (resultList.size() > 0) {
                result = true;
            }
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return result;
    }

    @Override
    public User getUserByLogin(String login) {
        User user = null;
        Session session = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            user = (User) session.createCriteria(User.class)
                    .add(Restrictions.eqOrIsNull("login", login))
                    .uniqueResult();

        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return user;
    }

}