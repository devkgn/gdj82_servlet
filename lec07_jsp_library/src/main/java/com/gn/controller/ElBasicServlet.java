package com.gn.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gn.vo.Person;

@WebServlet("/elBasic")
public class ElBasicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ElBasicServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request scope에 데이터 담기
		request.setAttribute("student", new Person("김철수",25));
		// session scope에 데이터 담기
		HttpSession session = request.getSession(true);
		session.setAttribute("teacher", new Person("홍길동",56));
		
		// application scope에 데이터 담기
		ServletContext application = request.getServletContext();
		application.setAttribute("test", "애플리케이션");
		// 똑같은 key값을 가진 데이터 다른 scope로 보내기
		request.setAttribute("test", "리쿠에스트");
		session.setAttribute("test", "세션");
		
		
		// 어디에 데이터를 전달할 것인가
		RequestDispatcher view = request.getRequestDispatcher("/views/el/basic.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
