package com.gn.spring.security.config;

import java.net.http.HttpRequest;

import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class WebSecurityConfig {

	@Bean
	public SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception{
		http
			//.csrf(csrf -> csrf.ignoringRequestMatchers("/board/**"))
			.authorizeHttpRequests(requests -> 
				requests.requestMatchers("/").permitAll()
						.requestMatchers("/board/**").authenticated()
						.requestMatchers("/join").permitAll()
						.requestMatchers("/boardUploadImg/**").permitAll())
			.formLogin(login -> 
				login.loginPage("/login")
					.loginProcessingUrl("/login")
					.usernameParameter("mem_id")
					.passwordParameter("mem_pw")
					.permitAll()
					.successHandler(new MyLoginSuccessHandler())
					.failureHandler(new MyLoginFailureHandler()))
			.httpBasic(Customizer.withDefaults());
		return http.build();
	}
	
	@Bean
	public WebSecurityCustomizer webSecurityCustomizer() {
		return (web -> 
			web.ignoring()
				.requestMatchers(
						PathRequest.toStaticResources().atCommonLocations()
				));
	}
}
