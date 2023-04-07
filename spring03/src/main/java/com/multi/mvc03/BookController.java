package com.multi.mvc03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
	@Autowired
	BookDAO dao;
	
	@RequestMapping("insert3.multi")
	public void insert(BookVO bag) {
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("update3.multi")
	public void update(BookVO bag) {
		System.out.println(dao);
		dao.update(bag);
	}
	
	@RequestMapping("delete3.multi")
	public void delete(int id) {
		System.out.println(dao);
		dao.delete(id);
	}
	
	@RequestMapping("one3.multi")
	public void one(int id, Model model) {
		BookVO bag = dao.one(id);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list3.multi")
	public void list(Model model) {
		List<BookVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
}
