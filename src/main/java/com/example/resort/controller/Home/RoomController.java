package com.example.resort.controller.Home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class RoomController {
	
	@GetMapping("superiorroom")
	public String superiorroom() {
		return "SuperiorRoom";
	}
	
	//@GetMapping("Popupogin")
	@GetMapping("contectus")
	public String contectus() {
		return "ContectUs";
	}

}
