package com.storeme.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.storeme.javabean.AtmBean;
import com.storeme.javabean.AtmInfoBean;
import com.storeme.services.AtmInfoService;

/**
 * Servlet implementation class EditAtmInfoServlet
 */
@WebServlet("/EditAtmInfoServlet")
@MultipartConfig
public class EditAtmInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditAtmInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		AtmInfoService atmInfosService = new AtmInfoService();
		ArrayList<AtmInfoBean> ATMINFOLIST = atmInfosService.getRestofinfo(Integer.parseInt(request.getParameter("id")));
		int idatm = Integer.parseInt(request.getParameter("id"));
		String action = atmInfosService.getSKUint(Integer.parseInt(request.getParameter("id")));
		String time = ATMINFOLIST.get(0).getTime();
		String received = ATMINFOLIST.get(0).getReceived_by();
		String activity = ATMINFOLIST.get(0).getActivity();
		String date = ATMINFOLIST.get(0).getDate_shipped();
		request.setAttribute("date", date);
		request.setAttribute("activity", activity);
		request.setAttribute("sku", action);
		request.setAttribute("id", idatm);
		request.setAttribute("time", time);
		request.setAttribute("received", received);
		request.setAttribute("atminfo", ATMINFOLIST);
		request.getRequestDispatcher("result2.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AtmInfoService atmInfosService = new AtmInfoService();
		int ids;
		AtmInfoBean ai = new AtmInfoBean();
		ai.setActivity(request.getParameter("activity"));
		ai.setDate_shipped(request.getParameter("date_shipped"));
		ai.setStatus(request.getParameter("status"));
		ai.setIdatminfo(Integer.parseInt(request.getParameter("id")));
		ai.setAtmplacement(request.getParameter("atmplacement"));
		ai.setReceived_by(request.getParameter("received_by"));
		ai.setTime_received(request.getParameter("time"));
		System.out.print("This is the id  " + ai.getIdatm() );
		atmInfosService.editAtmInfo(ai);
		response.getWriter().println("alert('Edit successful');");
		request.getRequestDispatcher("GetAllAtmInfoServlet").forward(request, response);

	}

}
