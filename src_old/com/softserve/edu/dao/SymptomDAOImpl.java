package com.softserve.edu.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;

public class SymptomDAOImpl extends ElementDAOImpl<Symptom> implements
        SymptomDAO {

    public SymptomDAOImpl() {
        super(Symptom.class);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Symptom> getSymptomsByName(String name) {
        Session session = null;
        List<Symptom> symptoms = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            symptoms = (List<Symptom>) session.createCriteria(Symptom.class)
                    .add(Restrictions.like("name", "%" + name + "%")).list();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return symptoms;
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Symptom> orderByNameAscending() {
        Session session = null;
        List<Symptom> symptoms = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            symptoms = (List<Symptom>) session.createCriteria(Symptom.class)
                    .addOrder(Order.asc("name")).list();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return symptoms;
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Symptom> orderByNameDescending() {
        Session session = null;
        List<Symptom> symptoms = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            symptoms = (List<Symptom>) session.createCriteria(Symptom.class)
                    .addOrder(Order.desc("name")).list();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return symptoms;
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Symptom> getSymptomsByDisease(Disease disease) {
        Session session = null;
        List<Symptom> symptoms = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session.createQuery(
                    "select ds.symptom " + "from DiseaseSymptom as ds where "
                            + "id_disease = :disease ").setParameter("disease",
                    disease);
            symptoms = (List<Symptom>) query.list();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return symptoms;
    }

}
