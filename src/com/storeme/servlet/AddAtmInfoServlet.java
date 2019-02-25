package com.storeme.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.storeme.javabean.AtmInfoBean;
import com.storeme.services.AtmInfoService;

/**
 * Servlet implementation class AddAtmInfoServlet
 */
@WebServlet("/AddAtmInfoServlet")
@MultipartConfig
public class AddAtmInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAtmInfoServlet() {
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
		AtmInfoService atmInfosService = new AtmInfoService();
		int ids;
		AtmInfoBean ai = new AtmInfoBean();
		ai.setActivtiy(request.getParameter("activity"));
		ai.setConsignee(request.getParameter("consignee"));
		ai.setDate(request.getParameter("date"));
		ai.setDate_shipped(request.getParameter("date"));
		ai.setTime(request.getParameter("time"));
		ai.setWaybill_no(request.getParameter("waybill_no"));
		ai.setSite(request.getParameter("site"));
		ai.setSku(request.getParameter("sku"));
		ai.setStatus(request.getParameter("status"));
		ids = atmInfosService.getMaxIdAtmInfo();
		System.out.println("Eto na   " + ids);
		atmInfosService.addAtmInfo(ids, ai);
		request.getRequestDispatcher("AddATM3.jsp").forward(request, response);
	}

}
