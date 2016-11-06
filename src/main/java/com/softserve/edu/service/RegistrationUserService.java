package com.softserve.edu.service;
import javax.mail.MessagingException;

import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.User;
import com.softserve.edu.exception.RegistrationUserException;

/**
 * @author aftor
 * Interface for new user registration
 */
public interface RegistrationUserService {
    
    /**
     * The method applied for the registration of the user with particular role
     * @param user
     * @param role
     * @throws MessagingException 
     * @throws RegistrationUserException 
     */
    void requestRegistration(User user, Role role) throws RegistrationUserException;
    
    /**
     * Method approves the application for registration of the user
     * @param uuid if uuid is identical - confirmation will be approved
     * @return true if confirmation was successful and false otherwise
     */
    public boolean confirmRegistration(String uuid);
}