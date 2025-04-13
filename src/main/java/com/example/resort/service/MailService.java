package com.example.resort.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service

public class MailService {
	
	@Autowired
	JavaMailSender mailSender;
	
	public void sendWelcomeMail(String email, String firstName) {
		String subject ="Welcome to resort";
		String body= "hey" + firstName + 
				",We Are exited to have you on the board. If you have the question feel free to ask";
		String from = "mehulhome124@gmail.com";
		
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);
		
		mailSender.send(message);
	}
	
	public void sendotpforforgetpassword(String email, String firstName, String otp) {
		String subject ="Otp for reset password";
		String body= "hey" + firstName + 
				",its seems you request for forget password use bellow the OTP your otp is : "+otp;
		String from = "mehulhome124@gmail.com";
		
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);
		
		mailSender.send(message);
	}

}
