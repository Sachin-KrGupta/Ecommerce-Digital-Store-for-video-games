package com.controller;

import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.service.AuthService;

import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@RestController
@RequestMapping("auth/")
public class AuthController {
	
	@Autowired
	AuthService authService;
	
	@PostMapping("login")
	public Map<String, Object> login(@RequestBody Map<String, Object> request) {
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> userMap = authService.authorizeUser(request.get("username").toString(),request.get("password").toString());
		
		if(userMap!=null && userMap.get("userid") != null && userMap.get("userid") != "") {
			map.put("authToken", createJWT(request.get("username").toString(), "sachingames.com", "auth", 360000));
			map.put("username", request.get("username"));
			map.put("userid",userMap.get("userid"));
		} else
			map.put("error", "User does not exist");
		return map;
	}
	
	@PostMapping("signup")
	public Map<String, Object> signUp(@RequestBody Map<String, Object> request) {
		Map<String, Object> map = new HashMap<>();
		boolean isSuccess = authService.signUp(request);
		if(isSuccess) {
			map.put("statusCode", "SUCCESS");
			map.put("status", "User registeration successful");
		} else {
			map.put("statusCode", "FAILURE");
			map.put("status", "USer could not be added");
		}
		
		return map;
	}
	
	public static String createJWT(String id, String issuer, String subject, long ttlMillis) {
		  
		SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;
		 
	    long nowMillis = System.currentTimeMillis();
	    Date now = new Date(nowMillis);
	 
	    //We will sign our JWT with our ApiKey secret
	    byte[] apiKeySecretBytes = DatatypeConverter.parseBase64Binary("1234567890");
	    Key signingKey = new SecretKeySpec(apiKeySecretBytes, signatureAlgorithm.getJcaName());
	 
	    //Let's set the JWT Claims
	    JwtBuilder builder = Jwts.builder().setId(id)
	                                .setIssuedAt(now)
	                                .setSubject(subject)
	                                .setIssuer(issuer)
	                                .signWith(signatureAlgorithm, signingKey);
	 
	    //if it has been specified, let's add the expiration
	    if (ttlMillis >= 0) {
	    long expMillis = nowMillis + ttlMillis;
	        Date exp = new Date(expMillis);
	        builder.setExpiration(exp);
	    }
	 
	    //Builds the JWT and serializes it to a compact, URL-safe string
	    return builder.compact();
	}
}
