package com.example.resort.controller.Home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.resort.entity.OffersEntity;
import com.example.resort.entity.UserEntity;
import com.example.resort.repository.OffersRepository;

@Controller

public class OffersController {
	
	
	@Autowired
	OffersRepository repooffers;
	
	@GetMapping("newoffers")
	public String newoffers() {
		return "NewOffers";
	}
	@GetMapping("addoffers")
	public String addoffers() {
		return "AddOffers";
	}
	@PostMapping("saveoffers")
	public String saveoffers(OffersEntity entityoffers) {
		repooffers.save(entityoffers);
		return "AddOffers";
	}
	
	@GetMapping("listoffers")
	public String listoffers(OffersEntity offers,Model model) {
		
		List<OffersEntity> offerlist= repooffers.findAll();
		model.addAttribute("offerslist",offerlist);
		return "ListOffers";
	}
	@GetMapping("deleteoffer")
	public String deleteoffer(Integer offeruserId) {
		repooffers.deleteById(offeruserId);
		return "redirect:/listoffers";
	}
	@GetMapping("homeoffers")
	public String homeoffers(Model model) {
		List<OffersEntity> offerList=repooffers.findAll();
		model.addAttribute("offerList",offerList)
;		return "HomeOffers";
	}
	

}
