package com.example.resort.controller.Home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.resort.entity.RatingEntity;
import com.example.resort.repository.RatingRepository;

@Controller

public class RatingController {
	
	@Autowired
	RatingRepository reporating;
	
	@GetMapping("rating")
	public String rating() {
		return "Rating";
	}
	@PostMapping("saverating")
	public String saverating(RatingEntity entityrating) {
		
		reporating.save(entityrating);
		return "Rating";
	}
	@GetMapping("listrating")
	public String listrating(Model model) {
		List<RatingEntity> rating = reporating.findAll();
		model.addAttribute("ratingList",rating);
		return "ListRating";
	}
}
