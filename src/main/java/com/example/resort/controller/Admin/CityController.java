package com.example.resort.controller.Admin;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.resort.entity.NewCityEntity;

import com.example.resort.repository.NewCityRepository;

@Controller

public class CityController {
	
	@Autowired
	NewCityRepository newrepocity;
	
	@GetMapping("newcity")
	public String newcity(Model model) {
		List<NewCityEntity> allCity = newrepocity.findAll();
		
	model.addAttribute("allcity",allCity);
		return "NewCity";
	}

}