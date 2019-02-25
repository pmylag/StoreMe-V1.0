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
 * Servlet implementation class AddAtmSectionServlet
 */
@WebServlet("/AddAtmSectionServlet")
@MultipartConfig
public class AddAtmSectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAtmSectionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int section1, section2, section3, section4, section5, section6, section7, section8, section9, section10;
		AtmInfoService atminfosServices = new AtmInfoService();
		section1 = atminfosServices.getcountSection1();
		section2 = atminfosServices.getcountSection2();
		section3 = atminfosServices.getcountSection3();
		section4 = atminfosServices.getcountSection4();
		section5 = atminfosServices.getcountSection5();
		section6 = atminfosServices.getcountSection6();
		section7 = atminfosServices.getcountSection7();
		section8 = atminfosServices.getcountSection8();
		section9 = atminfosServices.getcountSection9();
		section10 = atminfosServices.getcountSection10();
		
		request.setAttribute("in1", section1);
		request.setAttribute("in2", section2);
		request.setAttribute("in3", section3);
		request.setAttribute("in4", section4);
		request.setAttribute("in5", section5);
		request.setAttribute("in6", section6);
		request.setAttribute("in7", section7);
		request.setAttribute("in8", section8);
		request.setAttribute("in9", section9);
		request.setAttribute("in10", section10);
		request.getRequestDispatcher("AddATM1.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		AtmInfoBean ai = new AtmInfoBean();
		System.out.println("Eto naaa boiii " + request.getParameter("atmplacement"));
		ai.setAtmplacement(request.getParameter("atmplacement"));
		
		AtmInfoService atminfosService = new AtmInfoService();
		atminfosService.addAtmSection(ai);
		request.getRequestDispatcher("AddATM2.jsp").forward(request, response);
	}

}
