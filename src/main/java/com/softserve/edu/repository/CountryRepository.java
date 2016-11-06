package com.softserve.edu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.softserve.edu.entity.Country;

public interface CountryRepository extends JpaRepository<Country,Integer> {
	Country findByIso3(String iso3);
}