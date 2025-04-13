package com.example.resort.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.resort.entity.OffersEntity;

@Repository

public interface OffersRepository extends JpaRepository<OffersEntity, Integer>{

}
