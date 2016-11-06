package com.softserve.edu.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.softserve.edu.entity.Department;
import com.softserve.edu.repository.DepartmentRepository;

public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	DepartmentRepository departmentRepository;
	
	@Override
	public Department get(int id) {
		return departmentRepository.getOne(id);
	}
		

}
