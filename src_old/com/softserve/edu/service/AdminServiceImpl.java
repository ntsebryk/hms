package com.softserve.edu.service;

import java.util.List;
import java.util.Map;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;

public class AdminServiceImpl implements AdminService {

    @Override
    public List<User> getListOfUserByStatus(Enum<Status> status) {
        return FactoryDAO.getInstance().getUserDAO()
                .getListOfUserByStatus(status);
    }

    @Override
    public List<User> getListOfUserByArguments(Map<String, String> selectByArguments) {
        return FactoryDAO.getInstance().getUserDAO()
                .getListOfUserByArguments(selectByArguments);
    }	
    
    @Override
    public void editUser(Integer idUser, int newStatus) {
        FactoryDAO.getInstance().getUserDAO().changeUserStatus(idUser, newStatus);
    }
}