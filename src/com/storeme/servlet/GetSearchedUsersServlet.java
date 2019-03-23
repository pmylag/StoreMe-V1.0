package com.storeme.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.storeme.javabean.UserBean;
import com.storeme.services.UserService;

/**
 * Servlet implementation class GetSearchedUsersServlet
 */
@WebServlet("/GetSearchedUsersServlet")
@MultipartConfig
public class GetSearchedUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSearchedUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserService US = new UserService();
		String Type = request.getParameter("type");
		String like = request.getParameter("like");
		System.out.println("Hey wassup hello youououo   " + Type + like);
		ArrayList<UserBean> UB = US.getSearchedUsers(request.getParameter("type"), request.getParameter("like"));
		request.setAttribute("userlist", UB);
		
		request.getRequestDispatcher("allUsers.jsp").forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
