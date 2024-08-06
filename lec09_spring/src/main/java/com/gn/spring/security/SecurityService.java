package com.gn.spring.security;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Component("loginService")
public class SecurityService implements UserDetailsService{

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// 실제 데이터베이스에서 회원 정보를 조회
		// 조회한 회원 정보를 User 형태로 변환해서 제공
	}

}
