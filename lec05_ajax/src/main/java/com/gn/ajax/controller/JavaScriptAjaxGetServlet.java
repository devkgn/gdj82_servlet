package com.gn.ajax.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jsAjaxGetTest")
public class JavaScriptAjaxGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JavaScriptAjaxGetServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().append("<h2>"+name+"님이 만든 첫 ajax 응답</h2>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
