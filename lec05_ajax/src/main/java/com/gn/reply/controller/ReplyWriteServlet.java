package com.gn.reply.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/replyAjax")
public class ReplyWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReplyWriteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String text = request.getParameter("text");
		String name = request.getParameter("user");
		// System.out.println("텍스트 : "+text+"\n-"+name+"-");
		LocalDateTime ldt = LocalDateTime.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		String today = dtf.format(ldt);
		
		JSONObject o = new JSONObject();
		o.put("text", text);
		o.put("name", name);
		o.put("date", today);
		
		// {text:"반갑습니다.",name:"김철수",date:"2024-07-08 12:40"}
		
//		JSONArray arr = new JSONArray();
//		arr.add(o);
		
		response.setContentType("application/json;charset=utf-8");
		response.getWriter().print(o);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
