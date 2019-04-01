package com.storeme.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.storeme.javabean.AtmBean;
import com.storeme.services.AtmInfoService;
import com.storeme.services.AtmService;

/**
 * Servlet implementation class GetSelectedServlet
 */
@WebServlet("/GetSelectedServlet")
public class GetSelectedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSelectedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.print("pumasok here");
		AtmService AtmsService = new AtmService();
		ArrayList<AtmBean> atm = AtmsService.getSelectAtm(id);
		
		String cassette = null; 
		if (atm.get(0).getCassete1() == 1)
			cassette = "" + atm.get(0).getCassete1();
		
		else
			cassette = "  ";
		
		
		if (atm.get(0).getCassete2() == 1)
			cassette = cassette + ",  2";
		
		if (atm.get(0).getCassete3() == 1)
			cassette = cassette + ", 3 ";
		
		if (atm.get(0).getCassete4() == 1)
			cassette = cassette + ", 4" ;
		
		
		System.out.print(cassette);
		
		
		AtmInfoService atmInfosService = new AtmInfoService();
		
		String action = atmInfosService.getSKUint(Integer.parseInt(request.getParameter("id")));
		request.setAttribute("cassette", cassette);
		request.setAttribute("sku", action);

		request.setAttribute("atm", atm);
		request.getRequestDispatcher("result1.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		doGet(request, response);

	}

}
