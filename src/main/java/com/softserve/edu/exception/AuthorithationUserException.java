package com.softserve.edu.exception;

import javax.persistence.PersistenceException;

/**
 * Exception that will be generated if user can't rerister
 * @author aftor
 *
 */
public class AuthorithationUserException extends PersistenceException {

    private static final long serialVersionUID = -6984374668966667758L;

    public AuthorithationUserException(final String message) {
        super(message);
    }
}