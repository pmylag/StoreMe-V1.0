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
 * Servlet implementation class EditUsersServlet
 */
@WebServlet("/EditUsersServlet")
@MultipartConfig
public class EditUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		UserService US = new UserService();
		int ids = Integer.parseInt(request.getParameter("id"));
		ArrayList<UserBean> UserList = US.getUser(ids);
		request.setAttribute("first", UserList.get(0).getFirstname());
		request.setAttribute("last", UserList.get(0).getLastname());
		request.setAttribute("add", UserList.get(0).getAddress());
		request.setAttribute("eadd", UserList.get(0).getEmailaddress());
		request.setAttribute("mob", UserList.get(0).getMobilenumber());

		request.setAttribute("id", ids);
		request.getRequestDispatcher("AccountInfo.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserService US = new UserService();
		int ids = Integer.parseInt(request.getParameter("id"));
		UserBean UB = new UserBean();
		UB.setFirstname(request.getParameter("firstname"));
		UB.setLastname(request.getParameter("lastname"));
		UB.setAddress(request.getParameter("address"));
		UB.setEmailaddress(request.getParameter("emailaddress"));
		UB.setMobilenumber(request.getParameter("mobile"));
		US.editUsers(ids, UB);
		request.getRequestDispatcher("ViewAllUsersServlet").forward(request, response);
		
	}

}
