package com.softserve.edu.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;

public class ElementDAOImpl<E> implements ElementDAO<E> {
    
    private Class<E> elementClass;
    
    public ElementDAOImpl(Class<E> elementClass) {
        // TODO Auto-generated constructor stub
        this.elementClass = elementClass;
    }
    
    @Override
    public void addElement(E element) {
        // TODO Auto-generated method stub
        Session session = null;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            session.save(element);
            
            session.getTransaction().commit();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }

    @Override
    public E getElementByID(Integer id) {
        // TODO Auto-generated method stub
        Session session = null;
        E element = null;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            
            session.beginTransaction();
            
            element = (E) session.get(elementClass, id);
            
            session.getTransaction().commit();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return element;
    }

    @Override
    public void deleteElement(E element) {
        // TODO Auto-generated method stub
        Session session = null;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            session.delete(element);
            
            session.getTransaction().commit();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }

    @Override
    public List<E> getAllElements() {
        // TODO Auto-generated method stub
        Session session = null;
        List<E> listElements = null;
        
        try {
             session = HibernateUtil.getSessionFactory().openSession();            

            session.beginTransaction();
            listElements = (List<E>) session.createCriteria(elementClass).list();
            
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        
        return listElements;
    }

    @Override
    public void updateElement(E element) {
        // TODO Auto-generated method stub
        Session session = null;
        
        try{
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            
            session.update(element);
            
            session.getTransaction().commit();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }
}
