package com.gn.controller.send;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestPostServlet
 */
@WebServlet("/loginMember")
public class RequestPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		System.out.println("아이디 : "+id);
		System.out.println("비밀번호 : "+pw);
		
		RequestDispatcher view = request.getRequestDispatcher("views/responsePage.jsp");
		request.setAttribute("user_id", id);
		view.forward(request, response);
		
//		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		out.println("<!DOCTYPE html>");
//		out.println("<html lang=\"en\">");
//		out.println("<head>");
//		out.println("<meta charset=\"UTF-8\">");
//		out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
//		out.println("<title>로그인 결과 화면</title>");
//		out.println("</head>");
//		out.println("<body>");
//		out.println("<h1>반가워요 "+id+"님</h1>");
//		out.println("<h2>어떤 메뉴로 이동할까요?</h2>");
//		out.println("<a href=\"#\">공지사항</a>");
//		out.println("<a href=\"#\">이벤트</a>");
//		out.println("</body>");
//		out.println("</html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doGet(request, response);
		// request.setCharacterEncoding("UTF-8");
		
//		String id = request.getParameter("user_id");
//		String pw = request.getParameter("user_pw");
//		
//		System.out.println("아이디 : "+id);
//		System.out.println("비밀번호 : "+pw);
	}

}
