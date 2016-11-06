package com.softserve.edu.dao;

import com.softserve.edu.entity.Department;

public interface DepartmentDAO {

    Department getByName(String name);
    
}
