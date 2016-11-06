package com.softserve.edu.repository;

import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by adminuser on 10/6/14.
 */
@Repository
public interface UserRepository extends JpaRepository<User,Integer> {

	Page<User> findByStatus(com.softserve.edu.entity.Status status, Pageable page);
	List<User> findByFullNameContaining(String name);
	/**
	 * Finds users by status
	 * @param status
	 * @return list of users
	 */
    List<User> findByStatus(Status status);

    /**
     * Finds a user by login
     * @param login
     * @return a user with particular login
     */
    User findByLogin(String login);

    /**
     * Finds a user by login and status
     * @param login
     * @param status
     * @return a user with particular login and status
     */
    User findByLoginAndStatus(String login, Status status);

    /**
     * Finds a user by e-mail
     * @param email
     * @return a user with particular e-mail
     */
    User findByEmail(String email);

    /**
     * Finds a user by uuid
     * @param uuid
     * @return a user with particular uuid
     */
    User findByUuid(String uuid);

    /**
     * Finds a user by login or email
     * @param login
     * @param email
     * @return a user with particular login or email
     */
    User findByLoginOrEmail(String login, String email);
}
