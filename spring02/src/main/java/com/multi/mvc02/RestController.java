package com.multi.mvc02;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {
	
	@RequestMapping("json1")
	@ResponseBody //요청을 받으면 return되는 데이터를 json으로 만들어서 요청하는 곳으로 다시 보냄
	public MemberVO json1() {
		MemberVO bag = new MemberVO();
		bag.setId("root");
		bag.setPw("1234");
		bag.setName("hong");
		bag.setTel("011");
		return bag;
	}
	
	@RequestMapping("json2")
	@ResponseBody
	public ArrayList<MemberVO> json2() {
		MemberVO bag = new MemberVO();
		bag.setId("root");
		bag.setPw("1234");
		bag.setName("hong");
		bag.setTel("011");
		
		MemberVO bag2 = new MemberVO();
		bag2.setId("root2");
		bag2.setPw("12342");
		bag2.setName("hong2");
		bag2.setTel("0112");
		
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		list.add(bag);
		list.add(bag2);
		
		return list;
	}
	
	@RequestMapping("json3")
	@ResponseBody
	public BbsVO json3() {
		BbsVO bag = new BbsVO();
		bag.setNo(1);
		bag.setTitle("수요일");
		bag.setContent("비옴");
		bag.setWriter("apple");
		return bag;
	}
	
	@RequestMapping("json4")
	@ResponseBody
	public ArrayList<BbsVO> json4() {
		BbsVO bag = new BbsVO();
		bag.setNo(1);
		bag.setTitle("수요일");
		bag.setContent("비옴");
		bag.setWriter("apple");
		
		BbsVO bag2 = new BbsVO();
		bag2.setNo(2);
		bag2.setTitle("수요일2");
		bag2.setContent("비옴2");
		bag2.setWriter("apple2");
		
		ArrayList<BbsVO> list = new ArrayList<BbsVO>();
		list.add(bag);
		list.add(bag2);
		
		return list;
	}
	
	@RequestMapping("jsonResponse5")
	@ResponseBody
	public ArrayList<MapVO> jsonResponse5() {
		MapVO bag = new MapVO();
		bag.setLocation("코엑스");
		bag.setLat(37.5116);
		bag.setLon(127.0591);
		
		MapVO bag2 = new MapVO();
		bag2.setLocation("부산역");
		bag2.setLat(35.1152);
		bag2.setLon(129.042);
		
		ArrayList<MapVO> list = new ArrayList<MapVO>();
		list.add(bag);
		list.add(bag2);
		
		return list;
	}
	
	@RequestMapping("jsonResponse6")
	@ResponseBody
	public ArrayList<ChartVO> jsonResponse6() {
		ChartVO bag = new ChartVO();
		bag.setMovie("리바운드");
		bag.setScore(9.25);
		
		ChartVO bag2 = new ChartVO();
		bag2.setMovie("스즈메의 문단속");
		bag2.setScore(8.11);
		
		ChartVO bag3 = new ChartVO();
		bag3.setMovie("에어");
		bag3.setScore(9.00);
		
		ChartVO bag4 = new ChartVO();
		bag4.setMovie("던전 앤 드래곤");
		bag4.setScore(8.18);
		
		ChartVO bag5 = new ChartVO();
		bag5.setMovie("웅남이");
		bag5.setScore(7.69);
		
		ArrayList<ChartVO> list = new ArrayList<ChartVO>();
		list.add(bag);
		list.add(bag2);
		list.add(bag3);
		list.add(bag4);
		list.add(bag5);
		
		return list;
	}

}
