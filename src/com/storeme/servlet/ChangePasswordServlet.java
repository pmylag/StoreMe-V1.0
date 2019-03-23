package com.storeme.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.storeme.services.UserService;

/**
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/ChangePasswordServlet")
@MultipartConfig
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int ids = Integer.parseInt(request.getParameter("id"));
		request.setAttribute("id", ids);
		request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserService US = new UserService();
		int ids = Integer.parseInt(request.getParameter("id"));
		String ogpass= request.getParameter("ogpass");
		String check = request.getParameter("checkpass");
		String newpass = request.getParameter("newpass");
		String news = US.getPassword(ids);
		
	
		
		if (check.equals(newpass) && news.equals(ogpass)) {
			System.out.println("This shiz correct");
			US.editPassword(ids, newpass);
			request.getRequestDispatcher("ViewAllUsersServlet").forward(request, response);
		}
		
		else {
			System.out.println("This is wrong");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
		
		
	}

}
