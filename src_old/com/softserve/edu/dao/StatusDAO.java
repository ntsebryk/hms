package com.softserve.edu.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.Order;

import com.softserve.edu.entity.Status;

public class StatusDAO extends ElementDAOImpl<Status> {

    public StatusDAO() {
        super(Status.class);
    }
}