package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Department;

public class DepartmentServiceImpl implements DepartmentService {

    @Override
    public void add(Department department) {
        FactoryDAO.getInstance().getDepartmentDAO().addElement(department);
    }

    @Override
    public void delete(Department department) {
        FactoryDAO.getInstance().getDepartmentDAO().deleteElement(department);
    }

    @Override
    public void update(Department department) {
        FactoryDAO.getInstance().getDepartmentDAO().updateElement(department);
    }

    @Override
    public Department getById(int id) {
        return FactoryDAO.getInstance().getDepartmentDAO().getElementByID(id);
    }

    @Override
    public Department getNyName(String name) {
        return FactoryDAO.getInstance().getDepartmentDAO().getByName(name);
    }

    @Override
    public List<Department> getAll() {
        return FactoryDAO.getInstance().getDepartmentDAO().getAllElements();
    }

}
