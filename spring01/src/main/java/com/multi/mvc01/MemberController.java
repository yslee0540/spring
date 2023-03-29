package com.multi.mvc01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@Autowired
	MemberDAO dao; //전역변수
	//컨트롤하는 기능(CRUD)
	//회원가입, 수정, 탈퇴, 검색
	
	//클래스 내에서 기능처리 담당
	//멤버변수, 멤버메서드(기능처리)
	//하나의 요청당 하나의 메서드
	//요청된 주소가 어떻게 될 때 바로 아래에 있는 메서드가 호풀이 될지를 써주어야 함
	@RequestMapping("login")
	public String login(MemberVO bag) {
		System.out.println(bag);
		int result = dao.login(bag);
		if (result == 1) {
			return "ok";
		} else {
			//return "no";
			//webapp 아래 member.jsp로 가고 싶은 경우
			return "redirect:member.jsp";
		}
	}
	
	@RequestMapping("insert")
	public void insert(MemberVO bag) {
		//컨트롤러 내의 메서드 내에서 bag 만들어서 클라이언트로부터 전달된 데이터 다 넣어줌
		System.out.println("insert 요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("update")
	public void update(MemberVO bag) {
		System.out.println("update 요청됨.");
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("delete")
	public void delete(String id) {
		System.out.println("delete 요청됨.");
		System.out.println(id);
		dao.delete(id);
	}
	
	@RequestMapping("one")
	public void one(String id, Model model) {
		System.out.println("one 요청됨.");
		System.out.println(id);
		MemberVO bag = dao.one(id);
		//views까지 전달할 속성으로 추가
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list")
	public void list() {
		
	}
}
