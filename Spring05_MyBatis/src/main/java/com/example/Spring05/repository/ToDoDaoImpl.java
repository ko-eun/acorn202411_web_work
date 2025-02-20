package com.example.Spring05.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.Spring05.dto.ToDoDto;

@Repository
public class ToDoDaoImpl implements ToDoDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<ToDoDto> getList() {
		
		List<ToDoDto> list = session.selectList("todo.getList");
	
		return list;
	}

	@Override
	public void insert(ToDoDto dto) {
		session.insert("todo.insert", dto);
	}

	@Override
	public void update(ToDoDto dto) {
		session.update("todo,update", dto);
	}

	@Override
	public void delete(int id) {
		session.delete("todo.delete", id);
	}

	@Override
	public ToDoDto getData(int id) {
		ToDoDto dto = session.selectOne("todo.getData", id);
		
		return dto;
	}

}
