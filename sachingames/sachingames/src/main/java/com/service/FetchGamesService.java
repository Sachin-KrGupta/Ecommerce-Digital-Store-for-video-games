package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class FetchGamesService {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<Map<String, Object>> getGames() {
		return jdbcTemplate.queryForList("SELECT games.gameid, title, description, price, `size`, photos, category, link, brand , 4.2 as rating FROM games");
	}
}
