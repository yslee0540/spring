package com.multi.mvc02;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {

	@Autowired
	ReplyDAO dao;

	@RequestMapping("insert2")
	public void insert2(ReplyVO bag, Model model) {
		dao.insert(bag);
		ArrayList<ReplyVO> list = dao.list(bag.getBbsno());
		model.addAttribute("list", list);
	}
	
	@RequestMapping("insert21")
	public void insert(ReplyVO bag) {
		dao.insert(bag);
	}
	
	@RequestMapping("list4")
	public void list(int bbsno, Model model) {
		ArrayList<ReplyVO> list = dao.list(bbsno);
		model.addAttribute("list", list);
	}
	
}