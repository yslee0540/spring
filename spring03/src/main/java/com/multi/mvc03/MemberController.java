package com.multi.mvc03;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@Autowired
	MemberDAO dao; 
	
	@RequestMapping("login")
	public String login(MemberVO bag, HttpSession session) {
		int result = dao.login(bag);
		if (result == 1) {
			session.setAttribute("id", bag.getId());
			return "insert";
		} else {
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
	
	@RequestMapping("one")
	public void one(String id, Model model) {
		MemberVO bag = dao.one(id);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list")
	public void list(Model model) {
		List<MemberVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
}
