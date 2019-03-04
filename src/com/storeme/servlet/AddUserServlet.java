package com.storeme.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.storeme.javabean.UserBean;
import com.storeme.services.UserService;

/**
 * Servlet implementation class AddUserServlet
 */
@WebServlet("/AddUserServlet")
@MultipartConfig
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserService US = new UserService();
		UserBean UB = new UserBean();
		UB.setUsername(request.getParameter("username"));
		UB.setPassword(request.getParameter("password"));
		UB.setEmailaddress(request.getParameter("emailaddress"));
		UB.setFirstname(request.getParameter("firstname"));
		UB.setLastname(request.getParameter("lastname"));
		UB.setMobilenumber(request.getParameter("mobilenumber"));
		UB.setPrivilege(Integer.parseInt(request.getParameter("privilege")));
		UB.setAddress(request.getParameter("address"));
		US.adduser(UB);
		request.getRequestDispatcher("HomePage.jsp").forward(request, response);
		
	}

}
