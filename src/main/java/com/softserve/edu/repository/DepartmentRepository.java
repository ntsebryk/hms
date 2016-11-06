package com.softserve.edu.repository;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softserve.edu.entity.Department;

public interface DepartmentRepository extends JpaRepository<Department, Integer> {

}
