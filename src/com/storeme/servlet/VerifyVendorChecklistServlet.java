package com.storeme.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.storeme.services.AtmInfoService;

/**
 * Servlet implementation class VerifyVendorChecklistServlet
 */
@WebServlet("/VerifyVendorChecklistServlet")
public class VerifyVendorChecklistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerifyVendorChecklistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		response.getWriter().append("Served at: ").append(request.getContextPath());
		AtmInfoService atmInfosService = new AtmInfoService();
		atmInfosService.verifyVendorChecklist(Integer.parseInt(request.getParameter("id")), session.getAttribute("username").toString());
		request.getRequestDispatcher("GetSelectedServlet?id="+request.getParameter("id")).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
				
	}

}
