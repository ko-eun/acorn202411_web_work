package com.example.Spring05.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.Spring05.dto.ToDoDto;
import com.example.Spring05.repository.ToDoDao;

@Controller
public class ToDoController {
	@Autowired
	private ToDoDao dao;
	
	@GetMapping("/todo/list")
	public String list(Model model) {
		List<ToDoDto> list = dao.getList();
		
		model.addAttribute("list", list);
		
		return "todo/list";
	}
	
	@PostMapping("/todo/insert")
	public String insert(ToDoDto dto) {
		dao.insert(dto);
		return "todo/insert";
	}
	
	@GetMapping("/todo/new")
	public String newList() {
		
		return "todo/new";
	}
	
	@PostMapping
	public String update(ToDoDto dto) {
		dao.update(dto);
		return "todo/update";
	}
	
	@GetMapping("/todo/edit")
	public String edit(int id, Model model) {
		// GET 방식 파라미터로 전달되는 회원의 번호를 이용해서 회원 정보를 얻어온다.
		ToDoDto dto = dao.getData(id);
		// 응답에 필요한 데이터를 Model 객체에 담는다.
		model.addAttribute("dto", dto);
		
		return "todo/edit";
	}
	
	@GetMapping("/todo/delete")
	public String delete(int id) {
		dao.delete(id);
		
		return "redirect:/todo/list";
	}
}
