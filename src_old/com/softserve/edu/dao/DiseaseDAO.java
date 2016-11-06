package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Department;
import com.softserve.edu.entity.Disease;

public interface DiseaseDAO extends ElementDAO<Disease> {
    
    Disease getByName(String name);     
    
    List<Disease> getAllByDepartment(Department department);
    
    List<Disease> getByNameLike(String name);
    
    List<Department> getAllByDepartmentNameLike(String name);
    
}