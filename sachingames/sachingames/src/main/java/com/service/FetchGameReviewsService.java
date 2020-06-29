package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class FetchGameReviewsService {
	
	@Autowired JdbcTemplate jdbcTemplate;
	
	public List<Map<String, Object>> getGamesReviews(String gameId) {
		return jdbcTemplate.queryForList("select username, review, rating,  reviewdt from review join user where user.userid  = review.userid and gameid=?", gameId);
	}
}
