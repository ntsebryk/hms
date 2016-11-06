package com.softserve.edu.exception;

import javax.persistence.PersistenceException;

/**
 * Exception that will be generated if user can't rerister
 * @author aftor
 *
 */
public class RegistrationUserException extends PersistenceException {
    /**
     * serialVersionID
     */
    private static final long serialVersionUID = 72329140514033094L;
    
    /**
     * Caption of error
     */
    private final String messageDetails = "Registration user error!";
    
    public RegistrationUserException(final String message) {
        super(message);
    }

    public String getMessageDetails() {
        return messageDetails;
    }
}
