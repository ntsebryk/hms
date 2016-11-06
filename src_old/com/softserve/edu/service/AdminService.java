package com.softserve.edu.service;

import java.util.List;
import java.util.Map;

import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;

public interface AdminService {

    List<User> getListOfUserByStatus(Enum<Status> status);

    List<User> getListOfUserByArguments(Map<String, String> selectByArguments);

    void editUser(Integer idStatus, int newStatus);
}