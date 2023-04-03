package com.multi.mvc02;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	@Autowired
	BbsDAO dao;
	
	@Autowired
	ReplyDAO dao2;

	@RequestMapping("insert2.multi")
	public void insert(BbsVO bag) {
		dao.insert(bag);
	}
	
	@RequestMapping("insert")
	public void insert(ReplyVO bag, Model model) {
		dao2.insert(bag);
		ArrayList<ReplyVO> list = dao2.list(bag.getBbsno());
		model.addAttribute("list", list);
	}
	
	@RequestMapping("update2.multi")
	public void update(BbsVO bag) {
		dao.update(bag);
	}
	
	@RequestMapping("delete2.multi")
	public void delete(int no, BbsDAO dao) {
		dao.delete(no);
	}
	
	@RequestMapping("one2.multi")
	public void one(int no, Model model) {
		BbsVO bag = dao.one(no);
		model.addAttribute("bag", bag);
		ArrayList<ReplyVO> list = dao2.list(no);
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list2")
	public void list(Model model) {
		ArrayList<BbsVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
}