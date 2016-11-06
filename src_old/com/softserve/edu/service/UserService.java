package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.User;

/**
 * @author aftor
 * 
 */
public interface UserService {
    
    /**
     * Method returns a list of users with a particular role, which came as a
     * parameter.
     * 
     * @param role
     *            Will return a list of users with this role.
     * @return list of users with role "role".
     */
    public List<User> getUsersByRole(Role role);
}