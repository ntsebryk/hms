package com.softserve.edu.service;

import java.util.ArrayList;
import java.util.List;

import com.softserve.edu.dao.FactoryDAO;
import com.softserve.edu.entity.Department;
import com.softserve.edu.entity.Disease;

public class DiseaseServiceImpl implements DiseaseService {

    @Override
    public void add(Disease disease) {
        FactoryDAO.getInstance().getDiseaseDAO().addElement(disease);
    }

    @Override
    public void delete(Disease disease) {
        FactoryDAO.getInstance().getDiseaseDAO().deleteElement(disease);
    }

    @Override
    public void update(Disease disease) {
        FactoryDAO.getInstance().getDiseaseDAO().updateElement(disease);
    }

    @Override
    public Disease getById(int id) {
        return FactoryDAO.getInstance().getDiseaseDAO().getElementByID(id);
    }

    @Override
    public Disease getByName(String name) {
        return FactoryDAO.getInstance().getDiseaseDAO().getByName(name);
    }

    @Override
    public List<Disease> getAll() {
        return FactoryDAO.getInstance().getDiseaseDAO().getAllElements();
    }

    @Override
    public List<Disease> getAllByDepartment(Department department) {
        return FactoryDAO.getInstance().getDiseaseDAO()
                .getAllByDepartment(department);
    }

    @Override
    public List<Disease> getByNameLike(String name) {
        return FactoryDAO.getInstance().getDiseaseDAO().getByNameLike(name);
    }

    @Override
    public List<Disease> getAllByDepartmentNameLike(String name) {

        List<Department> departments = FactoryDAO.getInstance().getDiseaseDAO().getAllByDepartmentNameLike(name);
        
        System.out.println(departments);
        
        List<Disease> diseases = new ArrayList<Disease>();
        
        for (Department department : departments) {
            diseases.addAll(getAllByDepartment(department));
        }
        
        return diseases;
    }

}
