package com.softserve.edu.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.softserve.edu.entity.Department;
import com.softserve.edu.entity.Disease;

public class DiseaseDAOImpl extends ElementDAOImpl<Disease> implements
        DiseaseDAO {

    public DiseaseDAOImpl() {
        super(Disease.class);
    }

    @Override
    public Disease getByName(String name) {
        Session session = null;
        Disease disease = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Criteria criteria = session.createCriteria(Disease.class);
            @SuppressWarnings("unchecked")
            List<Disease> list = criteria.add(Restrictions.eq("name", name))
                    .list();
            disease = list.get(0);

        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return disease;
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Disease> getAllByDepartment(Department department) {
        Session session = null;
        List<Disease> result = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Criteria criteria = session.createCriteria(Disease.class);
            result = criteria.add(Restrictions.eq("department", department))
                    .list();

        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return result;
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Disease> getByNameLike(String name) {
        Session session = null;
        List<Disease> result = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Criteria criteria = session.createCriteria(Disease.class);
            result = criteria.add(Restrictions.like("name", "%" + name + "%"))
                    .list();

        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return result;
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Department> getAllByDepartmentNameLike(String name) {
        Session session = null;
        List<Department> departments = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Criteria criteria = session.createCriteria(Department.class);
            departments = criteria.add(
                    Restrictions.like("name", "%" + name + "%")).list();

        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }

        return departments;
    }
}
