package com.example.resort.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.example.resort.entity.CityEntity;

@Repository

public interface CityRepository extends JpaRepository<CityEntity, Integer>{

}
