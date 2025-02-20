package com.example.Spring05.repository;

import java.util.List;

import com.example.Spring05.dto.ToDoDto;

public interface ToDoDao {
	public List<ToDoDto> getList();
	public void insert(ToDoDto dto);
	public void update(ToDoDto dto);
	public void delete(int id);
	public ToDoDto getData(int id);
}
