package com.example.resort.controller.Admin;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.example.resort.entity.UserEntity;
import com.example.resort.repository.MemberRepository;
import com.example.resort.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller

public class AdminController {
	
	@Autowired
	UserRepository repoUser;
	
	@Autowired
	Cloudinary cloudinary;
	
	@Autowired
	MemberRepository repoMember;
	
	/*@GetMapping("admindashboard")
	public String admindashboard() {
		return "AdminDashboard";
	}*/
	
	@GetMapping("admindashboard")
	public String admindashboard(Model model) {
		
		//total users
		
		Long totalUsers  = repoUser.count();//total of user
		
		
		Integer totaluser = repoUser.findByRole("USER").size();
		
		Integer totalAdmin = repoUser.findByRole("ADMIN").size();
		
		model.addAttribute("totalUser", totaluser);
		
		/*
		 * //Member Long totalMember = repoMember.count();
		 * 
		 * Integer totalMembers =
		 */
		
		
		

		 
	   /* UserEntity user = (UserEntity) session.getAttribute("user");
	    if (user == null || !"ADMIN".equals(user.getRole())) {
	        return "redirect:/home";  
	    }*/
	    return "AdminDashboard";
	}

	
	//@GetMapping(value = {"/", "home")
	
	@GetMapping("home")
	public String home() {
		return "Home";
	}
	
	@GetMapping("/")
	public String redirectToHome() {
		return"redirect:/home";
	}
	
	@GetMapping("contectus")
	public String contectus() {
		return "ContectUs";
	}
	@GetMapping("listuser")
	public String listuser(UserEntity entity, Model model) {
		
		List<UserEntity> userlist= repoUser.findAll();
		model.addAttribute("userlist",userlist);
		return "ListUser";
	}
	
	
	@GetMapping("viewuser")
	public String viewuser(Integer userId, Model model) {
		
		System.out.println("id  ===>" +userId);
		Optional<UserEntity> op = repoUser.findById(userId);
		
		if(op.isEmpty()) {
			
		}else {
			UserEntity user = op.get();
			model.addAttribute("user",user);
		}
		return "ViewUser";
	}
	
	@GetMapping("deleteuser")
	public String deleteuser(Integer userId) {
		repoUser.deleteById(userId);
		return "redirect:/listuser";
	}
	@GetMapping("edituser")
	public String edituser(Integer userId, Model model) {
		
		Optional<UserEntity> op = repoUser.findById(userId);
		if(op.isEmpty()) {
			return "redirect:/listuser";
		}else {
			
			model.addAttribute("user",op.get());
		}
		return "EditUser";
	}
	@PostMapping("updateuser")
	public String updateuser(UserEntity entity, MultipartFile profilePic) {
		
		Optional<UserEntity> op =repoUser.findById(entity.getUserId());
		
		if(op.isPresent()) {
			
			UserEntity dbUser =op.get();
			dbUser.setFirstName(entity.getFirstName());
			dbUser.setLastName(entity.getLastName());
			dbUser.setGender(entity.getGender());
			dbUser.setEmail(entity.getEmail());
			dbUser.setContactNum(entity.getContactNum());
			dbUser.setBorn(entity.getBorn());
			dbUser.setProfilePicPath(entity.getProfilePicPath());
			
			try {
				Map result =cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
				
				System.out.println(result);
				System.out.println(result.get("url"));
				entity.setProfilePicPath(result.get("url").toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			repoUser.save(entity);
		}
		
		return "redirect:/listuser";
	}
	@GetMapping("adduser")
	public String adduser() {
		return "AddUser";
	}
	
	

}
