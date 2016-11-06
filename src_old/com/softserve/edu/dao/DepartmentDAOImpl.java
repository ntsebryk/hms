package com.softserve.edu.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.softserve.edu.entity.Department;

public class DepartmentDAOImpl extends ElementDAOImpl<Department> implements DepartmentDAO{

    public DepartmentDAOImpl() {
        super(Department.class);
    }

    @Override
    public Department getByName(String name) {
        Session session = null;
        Department department;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Criteria criteria = session.createCriteria(Department.class);
            @SuppressWarnings("unchecked")
            List<Department> list = criteria.add(Restrictions.eq("name", name)).list();
            department = list.get(0);
            
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return department;
    }

}
