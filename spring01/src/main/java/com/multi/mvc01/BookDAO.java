package com.multi.mvc01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class BookDAO {
	
	public ArrayList<BookVO> list() {
		ResultSet rs = null;
		
		//가방들 넣어줄 큰 컨테이너 역할
		ArrayList<BookVO> list = new ArrayList<>();
		BookVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "select * from book";
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			while (rs.next()) { //검색결과가 있는지 여부
				System.out.println("검색결과 있음");
				
				bag = new BookVO();
				bag.setId(rs.getInt("id"));
				bag.setName(rs.getString("name"));
				bag.setUrl(rs.getString("url"));
				bag.setImg(rs.getString("img"));
				
				list.add(bag);
			}
			ps.close(); con.close(); rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public BookVO one(int id) {
		ResultSet rs = null;
		BookVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "select * from book where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (rs.next()) {
				System.out.println("검색결과 있음");
				
				bag = new BookVO();
				bag.setId(rs.getInt("id"));
				bag.setName(rs.getString("name"));
				bag.setUrl(rs.getString("url"));
				bag.setImg(rs.getString("img"));
				
			} else {
				System.out.println("검색결과 없음");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bag;
	}
	
	public int delete(int id) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "delete from book where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("삭제 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int update(BookVO bag) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "update book set name = ? where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getName());
			ps.setInt(2, bag.getId());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("수정 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int insert(BookVO bag) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "insert into book values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			//R빼고 인덱스 0부터 시작, 유일하게 db는 인덱스가 1부터 시작
			//ps.setInt(1, bag.getNo());
			ps.setInt(1, bag.getId());
			ps.setString(2, bag.getName());
			ps.setString(3, bag.getUrl());
			ps.setString(4, bag.getImg());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("등록 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("북마크 등록 실패");
		}
		return result;

	}

}
