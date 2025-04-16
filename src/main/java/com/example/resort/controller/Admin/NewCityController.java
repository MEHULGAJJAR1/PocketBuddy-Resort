package com.example.resort.controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.resort.entity.NewCityEntity;
import com.example.resort.repository.NewCityRepository;

@Controller

public class NewCityController {
	@Autowired
	NewCityRepository repocity;
	
	@GetMapping("addcity")
	public String addcity() {
		return "AddCity";
	}
	@PostMapping("savecity")
	public String savecity(NewCityEntity City) {
		repocity.save(City);
		return "AddCity";
	}

}