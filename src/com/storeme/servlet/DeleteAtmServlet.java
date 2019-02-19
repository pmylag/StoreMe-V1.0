package com.storeme.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.storeme.services.AtmInfoService;
import com.storeme.services.AtmService;

/**
 * Servlet implementation class DeleteAtmServlet
 */
@WebServlet("/DeleteAtmServlet")
public class DeleteAtmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAtmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id =Integer.parseInt(request.getParameter("id"));
		AtmInfoService AtmInfosService = new AtmInfoService();
		AtmService AtmsService = new AtmService();
		AtmInfosService.deleteAtmInfo(id);
		AtmsService.deleteAtmInfo(id);
		System.out.println("This is the id nowatimsayin  " + id);

		request.getRequestDispatcher("GetAllAtmInfoServlet").forward(request, response);

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
