package com.example.resort.controller;

import java.io.IOException;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.multipart.MultipartFile;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.example.resort.entity.UserEntity;
import com.example.resort.repository.UserRepository;
import com.example.resort.service.MailService;

import jakarta.servlet.http.HttpSession;


@Controller

public class SessionController {
	
	@Autowired
	MailService serviceMail;
	
	@Autowired
	UserRepository repouser;
	
	@Autowired
	PasswordEncoder encoder;
	
	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping("signup")
	public String signup() {
		return"Signup";
	}
	@PostMapping("saveuser")
	public String saveuser(UserEntity userEntity, MultipartFile profilePic) {
		
		/*
		 * if(profilePic.getOriginalFilename().endsWith(".jpg")) {
		 * 
		 * 
		 * }else { return "Signup"; }
		 */
		
		
     		
			try {
				Map result =cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
				
				System.out.println(result);
				System.out.println(result.get("url"));
				userEntity.setProfilePicPath(result.get("url").toString());
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		//BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(4);//salt
		String encPassword = encoder.encode(userEntity.getPassword());
		userEntity.setPassword(encPassword);
		
		userEntity.setRole("USER");
		
		repouser.save(userEntity); 
		
		//For Send mail
		
	 serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
		 
		return"Login";
	}
	@GetMapping("login")
	public String login(String email, String Password) {
		return"Login";
	}
	@GetMapping("forgetpassword")
	public String forgetpassword() {
		return "ForgetPassword";
	}
	@GetMapping("changepassword")
	public String changepassword() {
		return "ChangePassword";
	}
	
	@PostMapping("sendotp")
	public String sendotp(String email, Model model) {
		
		Optional<UserEntity> op = repouser.findByEmail(email);
		
		if(op.isEmpty()) {
			model.addAttribute("error","email not found");
			return "ForgetPassword";
			
		}else {
			String otp ="";
			otp = (int) (Math.random()  * 100000 ) +"";
			
			UserEntity user = op.get();
			user.setOtp(otp);
			repouser.save(user);
			serviceMail.sendotpforforgetpassword(email, user.getFirstName(), otp);
			return "ChangePassword";
		}
	}
	
	@PostMapping("updatepassword")
	public String updatepassword(String email, String password,String otp, Model model) {
		
		Optional<UserEntity> op = repouser.findByEmail(email);
		if(op.isEmpty()){
			model.addAttribute("error", "Invalid data");
			return "ChangePassword";
			
		}else {
			UserEntity user = op.get();
			
			if(user.getOtp().equals(otp)) {
				String encpwd = encoder.encode(password);
				user.setPassword(encpwd);
				user.setOtp("");
				repouser.save(user);
				
			}else {
				
				model.addAttribute("error" ,"Invalid data");
				return "ChangePassword";
			}
			
			}
		model.addAttribute("msg", "password Succesfullly updated");
		return "Login";
	}
	
	
	@PostMapping("authenticate")
	public String authenticate(String email, String password, Model model, HttpSession session){
		
		System.out.println(email);
		System.out.println(password);
		
		Optional<UserEntity> op = repouser.findByEmail(email);
		
		if(op.isPresent()) {
			
			UserEntity dbUsers =op.get();
			boolean ans = encoder.matches(password, dbUsers.getPassword());
			if(ans == true) {
				session.setAttribute("user", dbUsers);
				if(dbUsers.getRole().equals("ADMIN")) {
					return "AdminDashboard";
					
				}else if(dbUsers.getRole().equals("USER")) {
					return "Home";
					
				}else {
					model.addAttribute("error","please conntect to admin");
					return "Login";
				}
			}
		}
		model.addAttribute("error", "invlid email and password");
		return "Login";
	}
	
	
	
	
	
	

	
}
