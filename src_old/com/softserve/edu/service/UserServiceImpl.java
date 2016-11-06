package com.softserve.edu.service;


import java.util.List;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.User;

/**
 * @author aftor
 * 
 */
public class UserServiceImpl implements UserService {
    
    /**
     * Factory instance of DAO classes
     */
    private final FactoryDAO factoryDAO;
    
    /**
     * Default constructor creates factoryDAO object
     */
    public UserServiceImpl() {
        this.factoryDAO = FactoryDAO.getInstance();
    }
    
    @Override
    public List<User> getUsersByRole(Role role) {
        return this.factoryDAO.getUserDAO().getUsersByRole(role);
    }
}