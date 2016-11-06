package com.softserve.edu.service;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.*;
import com.softserve.edu.util.UserRoleStatusFormatter;
import com.softserve.edu.repository.UserRepository;
import com.softserve.edu.repository.UserRoleRepository;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserRoleRepository userRoleRepository;

    @Transactional
    public Page<com.softserve.edu.entity.User> findNewUsers(int pageNumber,int pageSize) {
        return userRepository.findByStatus(Status.PENDING, new PageRequest(pageNumber, pageSize));
    }

    @Transactional
    public List<UserRole> findByUser(com.softserve.edu.entity.User user){
        return userRoleRepository.findByUser(user);
    }

    @Transactional
    public List<com.softserve.edu.entity.User> findUsersByName(String name) {
        return userRepository.findByFullNameContaining(name);
    }

    @Transactional
    public Page<UserRole> findUsersByRoleAndStatus(Role role, Status status, Pageable page) {
        return userRoleRepository.findByRoleAndStatus(role, status, page);
    }

    @Transactional
    public UserRole findUserRoleById(int id) {
        return userRoleRepository.findOne(id);
    }

    @Transactional
    public UserRole setRoleForUser(String roleName, int idUser) {
        //TODO: Add exception handling here
        com.softserve.edu.entity.User user = userRepository.findOne(idUser);
        Role role = Role.valueOf(("Role_" + roleName).toUpperCase());
        UserRole ur;
        if (userRoleRepository.findByUserAndRole(user, role) == null) {
            ur = new UserRole(user, role, Status.APPROVED);
        } else {
            ur = userRoleRepository.findByUserAndRole(user, role);
            switch (ur.getStatus()) {         
                case APPROVED:ur.setStatus(Status.REJECTED);
                    break;

                default:ur.setStatus(Status.APPROVED);
                    break;
            }            
        }
        
        return userRoleRepository.saveAndFlush(ur);
    }

    @Transactional
    public UserRole updateUserRoleStatus(UserRoleStatusFormatter ursf) {
        UserRole ur = findUserRoleById(ursf.getId());
        ur.setStatus(Status.valueOf(ursf.getStatus()));
        return userRoleRepository.saveAndFlush(ur);
    }

    @Transactional
    public com.softserve.edu.entity.User update(com.softserve.edu.entity.User userU) {
    	return userRepository.saveAndFlush(userU);
    }

    public com.softserve.edu.entity.User findOne(Integer id) {
		return userRepository.findOne(id);
	}

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        UserDetails ud = null;

        com.softserve.edu.entity.User user = userRepository.findByLogin(login);
        if(user == null) {
            throw new UsernameNotFoundException("User with login " + login + "not found");
        }

        boolean enabled = user.getStatus().equals(Status.APPROVED);
        ud = new User(user.getLogin(), user.getPass(), enabled, true, true, true, getAuthirities(user));

        return ud;
    }

    @SuppressWarnings("deprecation")
    @Transactional
    public Collection<? extends GrantedAuthority> getAuthirities(com.softserve.edu.entity.User user) {
        Set<GrantedAuthority> authorities = new HashSet<GrantedAuthority>();
//        List<Role> roles = userRoleRepository.findByUser(user);
        List<Role> roles = userRoleRepository.findRolesByUserAndStatus(user, Status.APPROVED);
        for (Role role : roles) {
            authorities.add(new GrantedAuthorityImpl(role.getName().toUpperCase()));
        }
        return authorities;
    }
}
