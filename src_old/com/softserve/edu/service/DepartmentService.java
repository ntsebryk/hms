package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Department;

public interface DepartmentService {
    
    void add(Department department);
    
    void delete(Department department);
    
    void update(Department department);

    Department getById(int id);
    
    Department getNyName(String name);
    
    List<Department> getAll();    
    
}
