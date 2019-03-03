package com.storeme.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
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
		ArrayList <AtmInfoBean> AtmInfos = atminfosService.getSearchedAtmInfo(request.getParameter("type"), request.getParameter("like"));
		request.setAttribute("atminfolists", AtmInfos);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = "";
		AtmInfoService atminfosService = new AtmInfoService();
		ArrayList <AtmInfoBean> AtmInfos = atminfosService.getSearchedAtmInfo(request.getParameter("type"), request.getParameter("like"));
		request.setAttribute("atminfolists", AtmInfos);
		doGet(request, response);
	}

}
