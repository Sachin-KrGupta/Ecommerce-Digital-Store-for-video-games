package com.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public Map<String, Object> authorizeUser(String userName, String password) {
		return jdbcTemplate.queryForMap("select userid, username, email, phone, address, age from user where username=? and password=?", userName, password);
	}

	public boolean signUp(Map<String, Object> request) {
		boolean isSuccess = jdbcTemplate.update("INSERT INTO sachin_games.`user` (username, password, email, phone, address, age) VALUES(?, ?, ?, ?, ?, ?)", new Object[] {
				request.get("username"),request.get("password"),request.get("email"),request.get("phone"),request.get("address"),request.get("age")
		})==1;
		return isSuccess;
	}
}
