package com.gn.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gn.vo.Person;

@WebServlet("/elOperation")
public class ElOperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ElOperationServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 숫자 전달
		request.setAttribute("big", 10);
		request.setAttribute("small", 3);
		
		// 문자 전달
		request.setAttribute("strOne", "사과");
		request.setAttribute("strTwo", "바나나");
		
		// 객체 전달
		request.setAttribute("pOne",new Person("이영희",13));
		request.setAttribute("pTwo", null);
		
		// List 전달
		List<String> list1 = new ArrayList<String>();
		request.setAttribute("listOne", list1);
		
		List<String> list2 = new ArrayList<String>();
		list2.add("날씨가 이상해요.");
		request.setAttribute("listTwo", list2);
		
		RequestDispatcher view = request.getRequestDispatcher("/views/el/operation.jsp");
		view.forward(request, response);
	}

	
	
	
	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
