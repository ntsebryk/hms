package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Department;
import com.softserve.edu.entity.Disease;

public interface DiseaseService {
    
    void add(Disease disease);
    
    void delete(Disease disease);
    
    void update(Disease disease);
    
    Disease getById(int id);   
    
    Disease getByName(String name);    

    List<Disease> getAll();
    
    List<Disease> getAllByDepartment(Department department);
    
    List<Disease> getByNameLike(String name);    
    
    List<Disease> getAllByDepartmentNameLike(String name);
        
}