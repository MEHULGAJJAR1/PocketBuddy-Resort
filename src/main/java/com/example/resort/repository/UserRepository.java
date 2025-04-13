package com.example.resort.repository;

import java.util.List;



import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.example.resort.entity.UserEntity;



@Repository

public interface UserRepository extends JpaRepository<UserEntity, Integer> {

		Optional<UserEntity> findByEmail(String email);
		
		List<UserEntity> findByRole(String role);
		
		List<UserEntity> findByRoleAndActivate(String role, Boolean activate);
}
