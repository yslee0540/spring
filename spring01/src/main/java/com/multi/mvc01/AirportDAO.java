package com.multi.mvc01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class AirportDAO {
	
	public ArrayList<AirportVO> list() {
		ResultSet rs = null;
		
		ArrayList<AirportVO> list = new ArrayList<>();
		AirportVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "select * from airport";
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			while (rs.next()) { //검색결과가 있는지 여부
				//System.out.println("검색결과 있음");
				
				bag = new AirportVO();
				bag.setCode(rs.getString(1));
				bag.setName(rs.getString(2));
				bag.setLatitude(rs.getString(3));
				bag.setLongitude(rs.getString(4));
				
				list.add(bag);
			}
			ps.close(); con.close(); rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public AirportVO one(String code) {
		ResultSet rs = null;
		AirportVO bag = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "select * from airport where code = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, code);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (rs.next()) { //검색결과가 있는지 여부
				
				bag = new AirportVO();
				bag.setCode(rs.getString(1));
				bag.setName(rs.getString(2));
				bag.setLatitude(rs.getString(3));
				bag.setLongitude(rs.getString(4));
				
			} else {
				System.out.println("검색결과 없음");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bag;
	}
	
	public int delete(String code) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "delete from airport where code = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, code);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("회원탈퇴처리 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int update(AirportVO bag) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "update airport set name = ? where code = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getName());
			ps.setString(2, bag.getCode());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("회원수정처리 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int insert(AirportVO bag) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공");
			
			String sql = "insert into airport values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getCode());
			ps.setString(2, bag.getName());
			ps.setString(3, bag.getLatitude());
			ps.setString(4, bag.getLongitude());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공");
			
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공");
			if (result == 1) {
				System.out.println("등록 완료");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
