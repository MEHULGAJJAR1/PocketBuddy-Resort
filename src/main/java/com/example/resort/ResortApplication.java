package com.example.resort;

import java.util.Map;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@SpringBootApplication
public class ResortApplication {

	public static void main(String[] args) {
		SpringApplication.run(ResortApplication.class, args);
	}
	@Bean
	PasswordEncoder encoder() {
		return new BCryptPasswordEncoder(4);
	}
	@Bean
	Cloudinary cloudinary() {
		Map<String, String> config = ObjectUtils.asMap("cloud_name", "dtewskxtr", "api_key", "875587868887351",
				"api_secret", "P1THNy4bWfxiaRPCykvbkzL0Vps");
		return new Cloudinary(config);
	}

}
  