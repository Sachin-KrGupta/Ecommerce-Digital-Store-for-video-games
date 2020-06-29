package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.service.FetchOrdersService;

@RestController
@RequestMapping("orders/")
public class FetchMyOrdersControlller {
	
	@Autowired
	FetchOrdersService fetchOrdersService;
	
	@GetMapping("myorders")
	public List<Map<String, Object>> getOrders(@RequestParam String userid) {
		return fetchOrdersService.getOrders(userid);
	}
	
	@PostMapping("neworder")
	public Map<String, Object> newOrder(@RequestBody Map<String, Object> request) {
		Map<String, Object> map = new HashMap<>();
		
		boolean isSuccess = fetchOrdersService.newOrder(request);
		
		if(isSuccess) {
			map.put("statusCode", "SUCCESS");
			map.put("status", "Order completed successfully");
		} else {
			map.put("statusCode", "FAILURE");
			map.put("status", "Order failed! Please try again");
		}
		return map;
	}
}
