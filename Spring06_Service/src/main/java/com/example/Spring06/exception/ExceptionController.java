package com.example.Spring06.exception;

import org.springframework.dao.DataAccessException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

// 예외 처리를 하는 컨트롤러는 @ControllerAdvice 어노테이션을 붙여서 bean 으로 만든다.
@ControllerAdvice
public class ExceptionController {
	/*
	 *  Dao 에서 SQLExeption 이 발생하면 자동으로 DataAccessException 이 발생한다.
	 */
	@ExceptionHandler(DataAccessException.class)
	public String handleDataAccessException(DataAccessException e, Model model) {
		model.addAttribute("message", "DB 관련 작업 도중 예외가 발생했습니다.");
		return "error/data-access";
	}
	
	@ExceptionHandler(RuntimeException.class)
	public String handleRuntimeException(RuntimeException e, Model model) {
		// 예외 메세지를 Model 객체에 담고
		model.addAttribute("message", e.getMessage());
		// view page 에서 에러 정보를 응답한다.
		return "error/runtime";
	}
	
}
