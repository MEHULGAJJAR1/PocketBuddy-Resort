package com.example.resort.controller.Home;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.example.resort.controller.Admin.NewCityController;
import com.example.resort.entity.NewCityEntity;
import com.example.resort.entity.OffersEntity;
import com.example.resort.entity.UserEntity;
import com.example.resort.repository.NewCityRepository;
import com.example.resort.repository.OffersRepository;

@Controller

public class OffersController {
	
	
	@Autowired
	OffersRepository repooffers;
	
	@Autowired
	Cloudinary cloudinary;
	
	@Autowired
	NewCityRepository newrepocity;
	
	@GetMapping("newoffers")
	public String newoffers() {
		return "NewOffers";
	}
	@GetMapping("addoffers")
	public String addoffers() {
		return "AddOffers";
	}
	@PostMapping("saveoffers")
	public String saveoffers(OffersEntity entityoffers, MultipartFile profilePic) {
		//photo
			try {
				
			Map result  = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
			System.out.println(result);	
			System.out.println(result.get("url"));
			
				entityoffers.setProfilePicPath(result.get("url").toString());
				
			}catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
		
		
		
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
		List<NewCityEntity> allCity = newrepocity.findAll();
		
		model.addAttribute("offerList",offerList);
		model.addAttribute("allcity",allCity);
		return "HomeOffers";
	}
	

}
