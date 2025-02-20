package com.example.Spring05.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.Spring05.dto.MemberDto;
import com.example.Spring05.repository.MemberDao;

@Controller
public class MemberController {
	@Autowired
	private MemberDao dao;
	
	@GetMapping("/member/list")
	public String list(Model model) {
		// 주입 받은 MemberDao 객체를 이용해서 회원 목록을 얻어온다.
		List<MemberDto> list = dao.getList();
		// Model 객체에 담는다.
		model.addAttribute("list", list);
		// Thymeleaf view 페이지에서 회원 목록을 응답한다.
		
		return "member/list";
	}
	
	@PostMapping("/member/insert")
	public String insert(MemberDto dto) {
		dao.insert(dto);
		return "member/insert";
	}
	
	@GetMapping("/member/new")
	public String newForm() {
		
		return "member/new";
	}
	
	@PostMapping
	public String update(MemberDto dto) {
		dao.update(dto);
		return "member/update";
	}
	
	@GetMapping("/member/edit")
	public String edit(int num, Model model) {
		// GET 방식 파라미터로 전달되는 회원의 번호를 이용해서 회원 정보를 얻어온다.
		MemberDto dto = dao.getData(num);
		// 응답에 필요한 데이터를 Model 객체에 담는다.
		model.addAttribute("dto", dto);
		
		return "member/edit";
	}
	
	@GetMapping("/member/delete")
	public String delete(int num) {
		dao.delete(num);
		
		return "redirect:/member/list";
	}
}
