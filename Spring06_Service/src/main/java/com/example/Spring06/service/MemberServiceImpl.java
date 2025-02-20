package com.example.Spring06.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Spring06.dto.MemberDto;
import com.example.Spring06.repository.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao dao;
	
	@Override
	public List<MemberDto> findAll() {
		List<MemberDto> list = dao.getList();
		return list;
	}

	@Override
	public MemberDto findById(int num) {
		MemberDto dto = dao.getData(num);
		return dto;
	}

	@Override
	public void save(MemberDto dto) {
		
			// dao 에서 예외가 발생하면 작업 실패이다.
			dao.insert(dto);
	}

	@Override
	public void update(MemberDto dto) {
			int rowCount = dao.update(dto);
			// 만일 수정된 row 갯수가 0 이면
			if(rowCount==0) {
				throw new RuntimeException("수정할 회원정보가 없습니다.");
			}
		
	}

	@Override
	public void deleteById(int num) {
			int rowCount = dao.delete(num);
			if(rowCount == 0) {
				throw new RuntimeException("삭제할 회원이 존재하지 않습니다.");
			}
	}

}
