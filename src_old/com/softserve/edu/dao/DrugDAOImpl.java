package com.softserve.edu.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
//import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.exception.ConstraintViolationException;

import com.softserve.edu.entity.Drug;

/**
 * @author yura
 *
 */
public class DrugDAOImpl extends ElementDAOImpl<Drug> 
                         implements DrugDAO{
    
    public DrugDAOImpl() {
        super(Drug.class);
    }
    
    
    //----------------------------------------------------------------------------------
    
    /**
     * @return
     */
    public List<String> getNameList() {
        Session session = null;
        List<String> drugList = null;
               
        try {
            session = HibernateUtil.getSessionFactory().openSession();   
                 
            Criteria criteria = session.createCriteria(Drug.class);
            criteria.setProjection(Projections.property("name"));
            criteria.addOrder(Order.asc("name"));
                         
            drugList = (List<String>) criteria.list();
        } catch (Exception ex) {
            System.out.println("\n--->!!!: " + ex.toString());
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        
        return drugList;
    }
    
   
    
    //------------------------------------------------------------------------------------------
    public boolean addDrug(Drug drug) {
        Session session = null;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction(); 
            
            session.save(drug);     
            
            session.getTransaction().commit();
        } catch (ConstraintViolationException ex) {
            System.out.println("\n!!!: " + ex.toString());
            System.out.println("     Couldn't add new medecine \"" + drug.getName() + "\".");
            System.out.println("     Such medecine already exists in the database.");
            return false;
        } catch (org.hibernate.PropertyValueException ex) {
            System.out.println("\n!!!: " + ex.toString());
            System.out.println("     null values are not valid.");
            return false;
        } catch (Exception ex) {
            System.out.println("\n??????!!!: " + ex.toString());
            return false;
        }  finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        
        return true;
    }
    
    //------------------------------------------------------------------------------
    public boolean updateDrug(Drug drug){
        Session session = null;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();  
            
            session.update(drug);     
            
            session.getTransaction().commit();
        } catch (ConstraintViolationException ex) {
            System.out.println("\n!!!: " + ex.toString());
            System.out.println("     Such medecine \"" + drug.getName() + "\"already exists in the database.");
            return false;
        } catch (org.hibernate.PropertyValueException ex) {
            System.out.println("\n!!!: " + ex.toString());
            System.out.println("     null values are not valid.");
            return false;
        } catch (Exception ex) {
            System.out.println("\n!!!: " + ex.toString());
            return false;
        }  finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        
        return true;        
        
    }
    
    //---------------------------------------------------------------------------------
    public Drug find(String drugName) {
        
        Session session = null;
        Drug drug = null;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();

            Criteria criteria = session.createCriteria(Drug.class);
            criteria.add(Restrictions.eq("name", drugName));        
            drug = (Drug) criteria.uniqueResult();
            
            session.getTransaction().commit();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
   
        return drug;
    }
    
    
    //----------------------------------------------------------------------------------
    public List<Drug> getDrugByName(String name) {
        Session session = null;
        List<Drug> drugList = null;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();

            session.beginTransaction();
            drugList = (List<Drug>) session.createCriteria(Drug.class)
                    .add(Restrictions.ilike("name", "%" + name + "%")).list();
            
            session.getTransaction().commit();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }       

        return drugList;
    }    
    
    
    
    //----------------------------------------------------------------------
    //@Override
    public boolean deleteDrug(Drug drug) {
        Session session = null;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            session.delete(drug);
            
            session.getTransaction().commit();
        } catch(Exception ex) {
            System.out.println("!!!: " + ex.getMessage());
            return false;
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        
        return true;
    }
    
    
    //-------------------------------------------------------
    public List<Drug> orderDrugByName() {
        Session session = null;
        List<Drug> elements = new ArrayList<Drug>();
        try {
                session = HibernateUtil.getSessionFactory().openSession();
                session.beginTransaction();
                
                elements = session.createCriteria(Drug.class).addOrder(Order.asc("name")).list();
                
                session.getTransaction().commit();
        } finally {
                if ((session != null) && (session.isOpen())) {
                        session.close();
                }
        }
        return elements;
    }


	@Override
	public Drug getDrugById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
    
    
    
    
    
}
