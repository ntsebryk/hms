package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.UserConfirm;
/**
 * Empty interface
 * @author aftor
 *
 */
public interface UserConfirmDAO extends ElementDAO<UserConfirm> {
    
    /**
     * returns UserConfirm object of user "user"
     * @param user
     * @return UserConfirm object
     */
    public UserConfirm getUserConfirmdByUser(User user);
}
