package com.softserve.edu.dao;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.softserve.edu.entity.User;
import com.softserve.edu.entity.UserConfirm;

public class UserConfirmDAOImpl extends ElementDAOImpl<UserConfirm> implements UserConfirmDAO {
    public UserConfirmDAOImpl() {
        super(UserConfirm.class);
    }

    @Override
    public UserConfirm getUserConfirmdByUser(User user) {
        Session session = null;
        UserConfirm uc = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            uc = (UserConfirm) session.createCriteria(UserConfirm.class)
                    .add(Restrictions.eq("user", user)).uniqueResult();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return uc;
    }
    
    
}