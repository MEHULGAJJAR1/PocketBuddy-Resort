package com.example.resort.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.resort.entity.NewCityEntity;

@Repository

public interface NewCityRepository extends JpaRepository<NewCityEntity, Integer>{

}
