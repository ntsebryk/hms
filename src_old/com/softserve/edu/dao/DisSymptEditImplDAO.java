package com.softserve.edu.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseSymptom;
import com.softserve.edu.entity.Symptom;

public class DisSymptEditImplDAO extends ElementDAOImpl<DiseaseSymptom>  implements DisSymptEditDAO {
	

	public DisSymptEditImplDAO() {
		super(DiseaseSymptom.class);
	}



	public List<DiseaseSymptom> findSymptomsForDisease(Disease disease) {
		  Session session = null;
		  List<DiseaseSymptom> listDisSympt = new ArrayList<DiseaseSymptom>();
	        
	        try {
	            session = HibernateUtil.getSessionFactory().openSession();            
	            listDisSympt = session.createCriteria(DiseaseSymptom.class)
	            		.add(Restrictions.eq("disease", disease)).list();

	            
	        } finally {
	            if ((session != null) && (session.isOpen())) {
	                session.close();
	            }
	        }
	        
	        return listDisSympt;
	    }
	
	public List<Symptom> getSymptListSortedByName() {
		Session session = null;
		List<Symptom> listSympt = new ArrayList<Symptom>();

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			listSympt = session.createCriteria(Symptom.class)
					.addOrder( Order.asc("name")).list();

		} finally {
			if ((session != null) && (session.isOpen())) {
				session.close();
			}
		}

		return listSympt;

	}
	
	public void removeListSymptoms(ArrayList<DiseaseSymptom> dsl) {
		for (DiseaseSymptom ds : dsl){
			FactoryDAO.getInstance().getDiseaseSymptomDAO().deleteElement(ds);
		};
	}

	public List<Symptom> findSymptomByName(String param) {
		Session session = null;
		List<Symptom> listSympt = new ArrayList<Symptom>();

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			listSympt = session.createCriteria(Symptom.class)
					.add( Restrictions.ilike("name", "%" + param + "%")).list();
		} finally {
			if ((session != null) && (session.isOpen())) {
				session.close();
			}
		}
		return listSympt;
	}

	@Override
	public List<Disease> findDiseasesForSymptom(Symptom symptom) {
		  Session session = null;
		  List<DiseaseSymptom> dsl = new ArrayList<DiseaseSymptom>();
		  List<Disease> resultList = new ArrayList<Disease>();
	        
	        try {
	            session = HibernateUtil.getSessionFactory().openSession();            
	            dsl = session.createCriteria(DiseaseSymptom.class)
	            		.add(Restrictions.eq("symptom", symptom)).list();
	        } finally {
	            if ((session != null) && (session.isOpen())) {
	                session.close();
	            }
	        }
	        
	        for(DiseaseSymptom ds : dsl) {
	        		resultList.add(ds.getDisease());
	        }
			return resultList;

	}


}
