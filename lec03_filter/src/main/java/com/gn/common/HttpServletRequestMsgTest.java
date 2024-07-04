package com.gn.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class HttpServletRequestMsgTest extends HttpServletRequestWrapper{

	public HttpServletRequestMsgTest(HttpServletRequest request) {
		super(request);
	}
	
	@Override
	public String getParameter(String name) {
		if("msg".equals(name)) {
			return super.getParameter(name)+"-gn-";
		} else {
			return super.getParameter(name);
		}
	}

}
