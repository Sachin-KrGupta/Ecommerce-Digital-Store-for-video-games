package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.service.FetchGamesService;

@RestController
@RequestMapping("games/")
public class FetchGamesController {

	@Autowired
	FetchGamesService fetchGamesService;

	@RequestMapping(value = "fetchGames", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, Object>> getDetails() {
		return fetchGamesService.getGames();
	}
}
