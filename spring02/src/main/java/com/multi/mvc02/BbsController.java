package com.multi.mvc02;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@RequestMapping("update2")
	public void update(BbsVO bag) {
		dao.update(bag);
	}
	
	@RequestMapping("delete2")
	public void delete(int no, BbsDAO dao) {
		dao.delete(no);
	}
	
	@RequestMapping("one2.multi")
	public String one(int no, Model model) {
		BbsVO bag = dao.one(no);
		model.addAttribute("bag", bag);
		ArrayList<ReplyVO> list = dao2.list(no);
		model.addAttribute("list", list);
		return "one21";
	}
	
	@RequestMapping("one4")
	public void one4(int no, Model model) {
		BbsVO bag = dao.one(no);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("one22")
	@ResponseBody
	public BbsVO one22(int no) {
		BbsVO bag = dao.one(no);
		return bag;
	}
	
	@RequestMapping("list2")
	public void list(Model model) {
		ArrayList<BbsVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list3")
	public void list3(Model model) {
		ArrayList<BbsVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list55")
	@ResponseBody
	public ArrayList<BbsVO> list55() {
		ArrayList<BbsVO> list = dao.list();
		return list;
	}
	
}