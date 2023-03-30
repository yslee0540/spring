package com.multi.mvc01;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AirportController {
	@Autowired
	AirportDAO dao;
	
	@RequestMapping("insert4")
	public void insert(AirportVO bag) {
		dao.insert(bag);
	}
	
	@RequestMapping("update4")
	public void update(AirportVO bag) {
		dao.update(bag);
	}
	
	@RequestMapping("delete4")
	public void delete(String code) {
		dao.delete(code);
	}
	
	@RequestMapping("one4")
	public void one(String code, Model model) {
		AirportVO bag = dao.one(code);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list4")
	public void list(Model model) {
		ArrayList<AirportVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
}
