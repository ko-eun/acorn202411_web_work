package com.example.Spring05.dto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ToDoDto {
	private int id;
	private String content;
	private String regdate;
}
