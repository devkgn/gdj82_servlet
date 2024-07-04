package com.gn.common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
@WebFilter("/filtertest/*")
// @WebFilter(servletNames = "filterTestServlet")
public class FilterTest extends HttpFilter implements Filter {
       

    public FilterTest() {
        super();
    }

	public void destroy() {
		// 필터 종료
	}	

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 실제 클라이언트의 요청과 응답을 가로채는 메소드
		System.out.println("필터 동작 시점 확인(요청)");
		chain.doFilter(request, response);
		System.out.println("필터 동작 시점 확인(응답)");
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// 필터 초기화 단계에서 호출
	}

}
