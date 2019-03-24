package com.storeme.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.storeme.javabean.AtmInfoBean;
import com.storeme.services.AtmInfoService;

/**
 * Servlet implementation class GetSearchedAtmInfoServlet
 */
@WebServlet("/GetSearchedAtmInfoServlet")
@MultipartConfig
public class GetSearchedAtmInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSearchedAtmInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = "";
		AtmInfoService atminfosService = new AtmInfoService();
		request.getParameter("type");
		ArrayList <AtmInfoBean> AtmInfos = atminfosService.getSearchedAtmInfo(request.getParameter("type"), request.getParameter("like"));
		request.setAttribute("type", request.getParameter("type"));
		request.setAttribute("like", request.getParameter("like"));
		request.setAttribute("atminfolists", AtmInfos);
		
		request.getRequestDispatcher("Results.jsp").forward(request, response);
		
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
