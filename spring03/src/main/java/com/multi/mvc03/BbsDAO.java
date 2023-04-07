package com.multi.mvc03;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
//	public ArrayList<BbsVO> list() {
//		return list;
//	}
	
	public BbsVO one(int no) {
		BbsVO bag = my.selectOne("bbs.one", no);
		return bag;
	}
	
	public int delete(int no) {
		int result = my.delete("bbs.del", no);
		return result;
	}
	
	public int update(BbsVO bag) {
		int result = my.update("bbs.up", bag);
		return result;
	}
	
	public int insert(BbsVO bag) {
		System.out.println(my);
		int result = my.insert("bbs.create", bag);
		return result;
	}

}
