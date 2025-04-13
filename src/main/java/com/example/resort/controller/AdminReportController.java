package com.example.resort.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

 import com.example.resort.entity.UserEntity;
import com.example.resort.repository.UserRepository;
@Controller

public class AdminReportController {
	
	@Autowired
	UserRepository repoUser;
	
	@GetMapping("adminactiveinterns")
	public String adminactiveinterns(Model model){
		
	List<UserEntity> users =	repoUser.findByRoleAndActivate("USER",true);
		
	List<UserEntity>user = repoUser.findAll();
	//find ByRoleAndActive
		//elect Where role = USER and Active = true
		model.addAttribute("userlist",user);
		return "AdminActiveInterns";
	}

}
