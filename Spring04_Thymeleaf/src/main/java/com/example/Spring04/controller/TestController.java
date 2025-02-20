package com.example.Spring04.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.Spring04.dto.MemberDto;

@Controller
public class TestController {
	
	@GetMapping("/notice")
	public String notice(Model model) {
		List<String> noticeList = List.of("Thymeleaf view engine 을 배워보아요!",
				"하나", "두울", "어쩌구..", "저쩌구..");
		model.addAttribute("noticeList", noticeList);
		
		return "post/notice";
	}
	
	@GetMapping("/member")
	public String member(Model model) {
		MemberDto dto = MemberDto.builder()
				.num(1)
				.name("김구라")
				.addr("노량진")
				.build();
		model.addAttribute("dto", dto);
		
		return "member/info";
	}
	
	@GetMapping("/member/list")
	public String memberList(Model model) {
		MemberDto dto1 = MemberDto.builder().num(1).name("김구라").addr("노량진").build();
		MemberDto dto2 = MemberDto.builder().num(2).name("해골").addr("행신동").build();
		MemberDto dto3 = MemberDto.builder().num(3).name("원숭이").addr("상도동").build();
		
		List<MemberDto> list = List.of(dto1, dto2, dto3);
		model.addAttribute("list", list);
		
		return "member/list";
	}
	
	@GetMapping("/sequence")
	public String sequence() {
		
		return "test/sequence";
	}
	
	@GetMapping("/if")
	public String ifTest(Model model) {
		
		// 로그인 여부
		model.addAttribute("isLogin", true);
		// 나이
		model.addAttribute("age", 30);
		// 점수
		model.addAttribute("jumsu", 80);
		// role
		model.addAttribute("role", "admin");
		
		return "test/if";
	}
	
	@GetMapping("/javascript")
	public String javascipt(Model model) {
		
		// 로그인 여부
		model.addAttribute("isLogin", true);
		// 나이
		model.addAttribute("age", 15);
		// 이름
		model.addAttribute("name", "김구라");
		
		MemberDto dto = MemberDto.builder()
				.num(1)
				.name("김구라")
				.addr("노량진")
				.build();
		model.addAttribute("dto", dto);
		
		MemberDto dto1 = MemberDto.builder().num(1).name("김구라").addr("노량진").build();
		MemberDto dto2 = MemberDto.builder().num(2).name("해골").addr("행신동").build();
		MemberDto dto3 = MemberDto.builder().num(3).name("원숭이").addr("상도동").build();
		
		List<MemberDto> list = List.of(dto1, dto2, dto3);
		model.addAttribute("list", list);
				
		return "test/javascript";
	}
	
	@GetMapping("/include")
	public String include(Model model) {
		
		model.addAttribute("title", "오늘의 인사");
		model.addAttribute("content", "또 만났군요!");
		
		return "test/include";
	}
	
	@GetMapping("/unescape")
	public String unescape(Model model) {
		// html 형식의 문자열을 template 페이지에 전달할 일도 발생한다.
		String html  = """
				<ul>
					<li>하나</li>
					<li>두울</li>
				</ul>
			""";
		
		model.addAttribute("content", html);
		
		return "test/unescape";
	}
}
