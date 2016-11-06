package com.softserve.edu.repository;

import com.softserve.edu.entity.Role;
import com.softserve.edu.entity.User;
import com.softserve.edu.entity.UserRole;
import com.softserve.edu.entity.Status;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by adminuser on 10/6/14.
 */
public interface UserRoleRepository extends JpaRepository<UserRole,Integer>{
    
    List<UserRole> findByUser(User user);

    @Query("select ur.role from UserRole as ur where ur.user = ?1 and ur.status = ?2")
    List<Role> findRolesByUserAndStatus(User user, Status status);

    Page<UserRole> findByRoleAndStatus(Role role, Status status, Pageable page);

    @Query("select ur.user from UserRole as ur where ur.role = ?1")
    List<User> findByRole(Role role);

    UserRole findByUserAndRole(User user, Role role);

    UserRole findByUserAndStatus(User user, Status status);
    
    @Query("SELECT ur.user.fullName FROM UserRole ur WHERE ur.user.fullName LIKE :name AND ur.role = :role")
    public Page<UserRole> getUsersByRole(@Param("name") String userName, @Param("role") Role userRole, Pageable pageable);
}
