package com.capeelectric;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.commons.util.InetUtils;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.eureka.EurekaInstanceConfigBean;
//import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Bean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@EnableTransactionManagement
@EnableCaching
@EnableEurekaClient
public class RegistrationApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(RegistrationApplication.class, args);
	}

	@Bean
	public RestTemplate getRestTemplate() {
		return new RestTemplate();
	}

//	@Bean
//	public JwtDetails getJwtToken() {
//		Gson gson = new Gson();
//		String secretName = "jwt/token";
//		String region = "ap-south-1";
//		AWSSecretsManager client = AWSSecretsManagerClientBuilder.standard().withRegion(region).build();
//
//		GetSecretValueRequest getSecretValueRequest = new GetSecretValueRequest().withSecretId(secretName);
//		GetSecretValueResult getSecretValueResult = null;
//
//		try {
//			getSecretValueResult = client.getSecretValue(getSecretValueRequest);
//			return gson.fromJson(getSecretValueResult.getSecretString(), JwtDetails.class);
//		} catch (Exception e) {
//			// For a list of exceptions thrown, see
//			// https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_GetSecretValue.html
//			throw e;
//		}
//	}	

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(RegistrationApplication.class);
	}

//	@Bean
//	public EurekaInstanceConfigBean eurekaInstanceConfig(InetUtils inetUtils) {
//
//		EurekaInstanceConfigBean config = new EurekaInstanceConfigBean(inetUtils);
//		String ip = null;
//		try {
//			ip = InetAddress.getLocalHost().getHostAddress();
//
//		} catch (UnknownHostException e) {
//			e.printStackTrace();
//		}
//
//		config.setIpAddress(ip);
////		config.setPreferIpAddress(true);
//
//		return config;
//	}
}
