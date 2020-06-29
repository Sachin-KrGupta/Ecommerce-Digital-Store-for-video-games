package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class FetchOrdersService {

	@Autowired
	JdbcTemplate jdbcTemplate;
	public List<Map<String, Object>> getOrders(String userId) {
		return jdbcTemplate.queryForList("select purchase.purchaseid, purchasedt, totalprice, discount, title, price from purchase join games_purchase on purchase.purchaseid = games_purchase .purchaseid join games on games.gameid  = games_purchase.gameid and purchase.userid = ?",userId);
	}
	
	
	public boolean newOrder(Map<String, Object> request) {
		List<Integer> gameIdList =  (List<Integer>) request.get("gameList");
		int isSuccess = jdbcTemplate.update("INSERT INTO sachin_games.purchase (userid, purchasedt, totalprice, discount) VALUES(?, ?, ?, ?)", new Object[] {request.get("userid"),request.get("purchasedt"),request.get("totalPrice"),request.get("discount")});
		int purchaseid = (int) jdbcTemplate.queryForMap("select max(purchaseid) as purchaseid from purchase").get("purchaseid");
		for (Integer string : gameIdList) {
			isSuccess = jdbcTemplate.update("INSERT INTO sachin_games.games_purchase (gameid, purchaseid) VALUES(?, ?)", new Object[] {string, purchaseid});
		}
		return isSuccess > 0;
	}	
}
