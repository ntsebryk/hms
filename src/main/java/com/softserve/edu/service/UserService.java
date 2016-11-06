package com.softserve.edu.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.softserve.edu.util.UserRoleStatusFormatter;
import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.UserRole;

public interface UserService extends UserDetailsService {

		List<UserRole> findByUser(com.softserve.edu.entity.User user);

		List<com.softserve.edu.entity.User> findUsersByName(String name);

		Page<com.softserve.edu.entity.User> findNewUsers(int pageNumber,int pageSize);

		Page<UserRole> findUsersByRoleAndStatus(Role role, Status status, Pageable page);

		UserRole findUserRoleById(int id);

		UserRole updateUserRoleStatus(UserRoleStatusFormatter ursf);

		UserRole setRoleForUser(String roleName, int idUser);

		com.softserve.edu.entity.User update(com.softserve.edu.entity.User user);

		com.softserve.edu.entity.User findOne(Integer id);
}
