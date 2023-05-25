package com.capeelectric.response;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

/**
 * 
 * @author capeelectricsoftware
 *
 */
@Configuration
public class JwtDetails {

	@Value("${jwt.secret}")
	private String jwt;

	public String getJwt() {
		return jwt;
	}

	public void setJwt(String jwt) {
		this.jwt = jwt;
	}
}
