/**
 * 
 */
package com.softserve.edu.service;

import java.util.UUID;

import org.hibernate.Query;
import org.hibernate.Session;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.dao.HibernateUtil;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.UserConfirm;
import com.softserve.edu.entity.UserRole;

/**
 * @author aftor
 * Class provides the functionality for the new user registration.
 */
public class RegistrationUserServiceImpl implements RegistrationUserService{
    /**
     * Factory instance of DAO classes
     */
    private final FactoryDAO factoryDAO;
    
    /**
     * Default constructor creates factoryDAO object
     */
    public RegistrationUserServiceImpl() {
        this.factoryDAO = FactoryDAO.getInstance();
    }
    
    /**
     * The method applied for the registration of the user
     * @param user
     */
    @Override
    public void requestRegistration(User user) {
        
        if (isUserExists(user)) {
            user = factoryDAO.getUserDAO().getUserByLogin(user.getLogIn());
            System.out.printf("User \"%s\" has already applied for registration and has Status \"%s\"%n%n"
                    , user.getLogIn()
                    , user.getStatus().getName());
        } else {
            String uuid = UUID.randomUUID().toString();
            
            
            user.setStatus(Status.PENDING);            
            factoryDAO.getUserDAO().addElement(user);
            UserConfirm userConfirm = new UserConfirm(user, uuid);
            factoryDAO.getUserConfirmDAO().addElement(userConfirm);
            System.out.printf("The application for registration for User \"%s\" was filed successfully, expect confirmation%n%n"
                    , user.getLogIn());
            System.out.printf("Sent uuid: %s%n%n"
                    , uuid);
        }         
    }
    
    /**
     * Method establishes the role to the user
     * @param user
     * @param role
     */
    @Override
    public void setUserRole(User user, Role role) {
        if (!isUserExists(user)) {
            System.out.printf("User %s has not applied for registration%n%n"
                    , user.getLogIn());
            return;
        } else {
            user = factoryDAO.getUserDAO().getUserByLogin(user.getLogIn());
            if(!exists(user, role)) {
                factoryDAO.getUserRoleDAO().addElement(new UserRole(user, role));
                System.out.printf("The application for registration for User \"%s\" with Role \"%s\" was applied successfully%n%n"
                        , user.getLogIn()
                        , role.getName());
            } else {
                System.out.printf("User \"%s\" with Role \"%s\" already exists%n%n"
                        , user.getLogIn()
                        , role.getName());
            }
        }
    }

    /**
     * Method approves or rejects the application for registration of the user
     * @param user
     * @param uuid if uuid is identical - confirmation will be approved
     * otherwise - confirmation will be rejected
     */
    @Override
    public void confirmRegistration(User user, String uuid) {
        if (!isUserExists(user)) {
            System.out.printf("User \"%s\" has not applied for registration%n%n"
                    , user.getLogIn());
            return;
        }
        
        user = factoryDAO.getUserDAO().getUserByLogin(user.getLogIn());
        UserConfirm uc = factoryDAO.getUserConfirmDAO().getUserConfirmdByUser(user);
        String baseUuid = uc.getUuid();
        
        System.out.printf("uuid come: \"%s\"%nuuid sent to email: \"%s\"%n%n"
                , uuid, baseUuid);
        
        if (uuid.equals(baseUuid)) {
            user.setStatus(Status.APPROVED);
            factoryDAO.getUserConfirmDAO().deleteElement(uc);
        } else {
            user.setStatus(Status.REJECTED);
        }

        factoryDAO.getUserDAO().updateElement(user);
        System.out.printf("The application for registration for User \"%s\" was \"%s\"%n%n"
                , user.getLogIn(), user.getStatus().getName());
    }
    
    /**
     * Method checks whether there is a user with role
     * @param user
     * @param role
     * @return true if user with role exists and false otherwise
     */
    private boolean exists(User user, Role role) {
        Session session = null;
        boolean exists = false;
        
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            Query query = session.createQuery(
                    "select ur.idUserRole "
                    + "from UserRole ur where ur.role = :r and "
                    + "ur.user = :u")
                    .setParameter("r", role)
                    .setParameter("u", user);
            if(query.list().size() > 0) {
                exists = true;
            }
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return exists;
    }
    
    /**
     * Method checks whether the user in the database
     * @param user
     * @return true if user already in DB and false otherwise
     */
    private boolean isUserExists(User user) {
        return factoryDAO.getUserDAO().existsWithLogin(user.getLogIn());
    }
}
