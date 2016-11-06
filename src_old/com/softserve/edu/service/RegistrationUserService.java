package com.softserve.edu.service;

import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.User;

/**
 * @author aftor
 * 
 */
public interface RegistrationUserService {
    
    /**
     * The method applied for the registration of the user
     * @param user
     */
    public void requestRegistration(User user);
    
    /**
     * Method establishes the role to the user
     * @param user
     * @param role
     */
    public void setUserRole(User user, Role role);
    
    /**
     * Method approves or rejects the application for registration of the user
     * @param user
     * @param uuid if uuid is identical - confirmation will be approved
     * otherwise - confirmation will be rejected
     */
    public void confirmRegistration(User user, String uuid);
}