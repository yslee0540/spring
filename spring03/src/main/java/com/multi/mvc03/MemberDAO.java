package com.multi.mvc03;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<MemberVO> list() {
		return my.selectList("member.all");
	}

	public int login(MemberVO vo) {
		int result = my.selectOne("member.login", vo);
		return result;
	}
	
	public MemberVO one(String id) {
		MemberVO vo = my.selectOne("member.one", id);
		return vo;
	}
	
	public int delete(String id) {
		int result = my.delete("member.del", id);
		return result;
	}
	
	public int update(MemberVO vo) {
		int result = my.update("member.up", vo);
		return result;
	}
	
	public int insert(MemberVO vo) {
		int result = my.insert("member.create", vo);
		//namespace.id
		return result;
	}

}
