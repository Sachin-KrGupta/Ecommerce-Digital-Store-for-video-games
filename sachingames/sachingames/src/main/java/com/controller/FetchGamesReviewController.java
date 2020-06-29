package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.service.FetchGameReviewsService;

@RestController
@RequestMapping("reviews")
public class FetchGamesReviewController {
	@Autowired
	FetchGameReviewsService fetchReviews;
	
	@GetMapping("gameReviews")
	public List<Map<String, Object>> getGameReviews(@RequestParam String gameid) {
		return fetchReviews.getGamesReviews(gameid);
	}
}
