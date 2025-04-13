package com.example.resort.controller;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.example.resort.entity.MemberEntity;
import com.example.resort.entity.UserEntity;
import com.example.resort.repository.MemberRepository;


@Controller

public class MemberController {
	
	@Autowired
	MemberRepository repoMember;
	
	@GetMapping("newmember")
	public String newmember() {
	return "NewMember";
	}
	    
	@PostMapping("savemember")
	public String saveMember(MemberEntity entitymember,MultipartFile profilePhoto) {
		
		
		repoMember.save(entitymember);
		return "NewMember";
	}
	@GetMapping("listmembers")
	public String listMembers(Model model) {
		List<MemberEntity>memberlist = repoMember.findAll();
		model.addAttribute("memberlist", memberlist);
		return "ListMember";
	}
	@GetMapping("viewmember")
	public String viewMember(Integer memberId, Model model) {
		System.out.println("id ===>" + memberId);
		Optional<MemberEntity> op = repoMember.findById(memberId);
		
		if (op.isEmpty()) {
			
		}else {
			MemberEntity member = op.get();
			model.addAttribute("member",member);
		}
		
		return "ViewMember";
	}
	
	@GetMapping("deletemembers")
	public String deletemember(Integer memberId) {
		repoMember.deleteById(memberId);
		return "redirect:/listmembers";
	}
	@GetMapping("editmember")
	public String editmember(Integer memberId, Model model) {
		
		Optional<MemberEntity> op = repoMember.findById(memberId);
		
		if(op.isEmpty()) {
			return "redirect:/listmembers";
		}else {
			
			model.addAttribute("member", op.get());
			return "EditMember";
		}
		
	}
	@PostMapping("updatemember")
	public String updatemember(MemberEntity entity) {
		 
		Optional<MemberEntity> op = repoMember.findById(entity.getMemberId());
		if(op.isPresent()) {
			
			MemberEntity dbMember =op.get();
			dbMember.setMemberName(entity.getMemberName());
			dbMember.setAge(entity.getAge());
			dbMember.setProfilePhoto(entity.getProfilePhoto());
			repoMember.save(entity);
		
		}
		return "redirect:/listmembers";
	}
	
	
	

	
}
