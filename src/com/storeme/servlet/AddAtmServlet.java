package com.storeme.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.storeme.javabean.AtmBean;
import com.storeme.services.AtmInfoService;
import com.storeme.services.AtmService;

/**
 * Servlet implementation class AddAtmServlet
 */
@WebServlet("/AddAtmServlet")
@MultipartConfig
public class AddAtmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAtmServlet() {
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
		AtmService AS = new AtmService();
		AtmInfoService AI = new AtmInfoService();
		int ids;
		AtmBean	ab = new AtmBean();
		ab.setIdatm(AI.getMaxIdAtmInfo());
		ab.setBolt_screw_set_qty(Integer.parseInt(request.getParameter("bolt_screw_set_qty")));
		ab.setBolt_screw_set_rmk(request.getParameter("bolt_screw_set_rmk"));
		ab.setCash_casst_key_qty(Integer.parseInt(request.getParameter("cash_casst_key_qty")));
		ab.setCash_casst_key_rmk(request.getParameter("cash_casst_key_qty"));
		ab.setClad_qty(Integer.parseInt(request.getParameter("clad_qty")));
		ab.setClad_rmk(request.getParameter("clad_rmk"));
		ab.setCollar_qty(Integer.parseInt(request.getParameter("collar_qty")));
		ab.setCollar_rmk(request.getParameter("collar_rmk"));
		ab.setDecale_qty(Integer.parseInt(request.getParameter("decale_qty")));
		ab.setDecale_rmk(request.getParameter("decale_rmk"));
		ab.setFsc_wndw_frame_qty(Integer.parseInt(request.getParameter("fsc_wndw_frame_qty")));
		ab.setFsc_wndw_frame_remk(request.getParameter("fsc_wndw_frame_remk"));
		ab.setDriver(request.getParameter("driver"));
		ab.setBank(request.getParameter("bank"));
		ab.setWarehouse_asst(request.getParameter("warehouse_asst"));
		ab.setConsignee(request.getParameter("consignee"));
		ab.setChecker(request.getParameter("checker"));
		ab.setPlateno(request.getParameter("plateno"));
		ab.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		ab.setRemarks(request.getParameter("remarks"));
		ab.setCassete1(Integer.parseInt(request.getParameter("cassete1")));
		ab.setCassete2(Integer.parseInt(request.getParameter("cassete2")));
		ab.setCassete3(Integer.parseInt(request.getParameter("cassete3")));
		ab.setCassete4(Integer.parseInt(request.getParameter("cassete4")));
		
		AS.addAtm(ab);
		request.getRequestDispatcher("HomePage.jsp").forward(request, response);

	}

}
