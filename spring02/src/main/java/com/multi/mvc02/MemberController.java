package com.multi.mvc02;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	@Autowired
	MemberDAO dao; 
	
	@RequestMapping("login")
	public String login(MemberVO bag, HttpSession session) {
		System.out.println(bag);
		int result = dao.login(bag);
		if (result == 1) {
			session.setAttribute("id", bag.getId());
			return "ok";
			//return "redirect:bbs.jsp";
		} else {
			//return "no";
			//webapp 아래 member.jsp로 가고 싶은 경우
			return "redirect:member.jsp";
		}
	}
	
	@RequestMapping("insert")
	public void insert(MemberVO bag) {
		dao.insert(bag);
	}
	
	@RequestMapping("update")
	public void update(MemberVO bag) {
		dao.update(bag);
	}
	
	@RequestMapping("delete")
	public void delete(String id) {
		dao.delete(id);
	}
	
	@RequestMapping("one3")
	public void one(String id, Model model) {
		MemberVO bag = dao.one(id);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list5")
	public void list(Model model) {
		ArrayList<MemberVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("jsonResponse3")
	@ResponseBody
	public MemberVO jsonResponse3(String id) {
		MemberVO bag = dao.one(id);
		return bag;
	}
	
	@RequestMapping("jsonResponse4")
	@ResponseBody
	public ArrayList<MemberVO> jsonResponse3() {
		ArrayList<MemberVO> list = dao.list();
		return list;
	}
}
