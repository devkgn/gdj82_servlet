package com.gn.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class EncodingFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpServletRequestMsgTest hrt 
			= new HttpServletRequestMsgTest((HttpServletRequest)request);
		
		chain.doFilter(hrt, response);
		
	}
	
	
	
	
	

}
