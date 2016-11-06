package com.softserve.edu.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

import com.softserve.edu.entity.Disease;
import com.softserve.edu.entity.DiseaseDrug;
import com.softserve.edu.entity.Drug;

public class DiseaseDrugDAOImpl extends ElementDAOImpl<DiseaseDrug> implements
		DiseaseDrugDAO {

	public DiseaseDrugDAOImpl() {
		super(DiseaseDrug.class);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DiseaseDrug> getDrugForDisease(Disease disease) {
		Session session = null;
		List<DiseaseDrug> elements = new ArrayList<DiseaseDrug>();
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			elements = session.createCriteria(DiseaseDrug.class)
					.add(Restrictions.eq("disease", disease)).list();
			session.getTransaction().commit();

		} finally {
			if ((session != null) && (session.isOpen())) {
				session.close();
			}
		}
		return elements;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<DiseaseDrug> getDiseasesForDrug(Drug drug) {
		Session session = null;
		List<DiseaseDrug> elements = new ArrayList<DiseaseDrug>();
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			elements = session.createCriteria(DiseaseDrug.class)
					.add(Restrictions.eq("drug", drug)).list();
			session.getTransaction().commit();

		} finally {
			if ((session != null) && (session.isOpen())) {
				session.close();
			}
		}
		return elements;
	}
}
