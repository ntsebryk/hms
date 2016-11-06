package com.softserve.edu.dao;

import java.util.List;
import java.util.Map;

import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;

/**
 * DAO Interface for Entity User
 * 
 * @author aftor&mkhrun ;)
 */
public interface UserDAO extends ElementDAO<User> {

	/**
	 * Method return list of user with a particular status, that came as
	 * parameter.
	 * 
	 * @param status
	 *            Particular status, according to which list of user will be
	 *            returned
	 * @return list of users
	 */
	List<User> getListOfUserByStatus(Enum<Status> status);

	/**
	 * Method returns a list of users with a particular role, which came as a
	 * parameter.
	 * 
	 * @param role
	 *            Will return a list of users with this role.
	 * @return list of users with role "role".
	 */
	List<User> getUsersByRole(Role role);

	/**
	 * Method return list of user according to specific parameters.
	 * 
	 * @param selectByArguments
	 *            map contains pairs of column and value(s)
	 * @return list of users
	 */
	List<User> getListOfUserByArguments(Map<String, String> selectByArguments);

	/**
	 * Method checks whether the user exists with specified login
	 * 
	 * @param login
	 * @return true if user exists with specified login and false otherwise
	 */
	boolean existsWithLogin(String login);

	/**
	 * Method returns first user with a particular login
	 * 
	 * @param login
	 * @return User with particular login
	 */
	User getUserByLogin(String login);

	/**
	 * Method edit selected user in User Entity by particular user object
	 * 
	 * @param user
	 *            pass id user
	 * @param newStatus
	 *            pass new status for user
	 */
	void changeUserStatus(Integer idUser, int newStatus);
}
