package com.example.resort.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.resort.entity.RatingEntity;

@Repository

public interface RatingRepository extends JpaRepository<RatingEntity, Integer>{

}
