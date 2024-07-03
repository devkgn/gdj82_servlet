package com.gn.controller.send;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/joinMember")
public class RequestGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RequestGetServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("user_name");
		// String gender = request.getParameter("gender");
		int gender = Integer.parseInt(request.getParameter("gender"));
		int age = Integer.parseInt(request.getParameter("user_age"));
		
		System.out.println("이름 : "+name);
		System.out.println("성별 : "+(gender == 1 ? "남자" : "여자"));
		System.out.println("나이 : "+age);
		
		
		String[] hobby = request.getParameterValues("hobby");
//		if(hobby == null) {
//			System.out.println("취미 없음");
//		} else {
//			System.out.println("취미 : "+String.join(",",hobby));
//		}
		
		String[] arr = new String[hobby.length];
		for(int i = 0 ; i < hobby.length ; i++) {
			int num = Integer.parseInt(hobby[i]);
			String text = "";
			switch(num) {
				case 1 : text = "야구"; break;
				case 2 : text = "농구"; break;
				case 3 : text = "축구"; break;
			}
			arr[i] = text;
		}
		System.out.println("취미 : "+String.join(",",arr));
		
		// DB 연결 , 처리
		// 작업 결과에 따라서 다른 페이지 보여줌
		
		// 1. 앞으로 출력할 문서 형태 선언
		response.setContentType("text/html; charset=UTF-8");
		// 2. 응답하고자 하는 사용자와의 연결통로(스트림)
		PrintWriter out = response.getWriter();
		// 3. 스트림을 통해서 HTML 구문을 한줄씩 출력
		out.println("<!DOCTYPE html>");
		out.println("<html lang=\"en\">");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\">");
		out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
		out.println("<title>회원가입 결과화면</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>"+name+"님 환영합니다.</h1>");
		out.println("<ul>");
		out.println("<li>성별 : "+(gender == 1 ? "남자" : "여자")+"</li>");
		out.println("<li>나이 : "+age+"</li>");
		out.println("<li>취미 : "+String.join(",", arr)+"</li>");
		out.println("</ul>");
		out.println("<a href=\"/first\">홈페이지로 이동</a>");
		out.println("</body>");
		out.println("</html>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
