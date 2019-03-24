package com.storeme.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
		AtmInfoService atmInfosService = new AtmInfoService();
		int id = atmInfosService.getMaxIdAtmInfo();
		String consign = atmInfosService.getSelectedAtmInfoConsignee(id);
		request.setAttribute("consignee", consign);
		request.getRequestDispatcher("AddATM3.jsp").forward(request, response);

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
		ai.setConsignee(request.getParameter("consignee"));
		for (int i = 0; i < ai.getConsignee().length(); i++) {
			if (Character.isAlphabetic(ai.getConsignee().charAt(i))) {
				request.setAttribute("ConsigneeIsFalse", "false");
			}
		}
		ai.setDate(request.getParameter("date"));
		ai.setTime(request.getParameter("time"));
		switch(request.getParameter("time")) {
			case "12:00":
				ai.setTime("12:00 PM");
				break;
			case "12:01":
				ai.setTime("12:01 PM");
				break;
			case "12:02":
				ai.setTime("12:02 PM");
				break;
			case "12:03":
				ai.setTime("12:03 PM");
				break;
			case "12:04":
				ai.setTime("12:04 PM");
				break;
			case "12:05":
				ai.setTime("12:05 PM");
				break;
			case "12:06":
				ai.setTime("12:06 PM");
				break;
			case "12:07":
				ai.setTime("12:07 PM");
				break;
			case "12:08":
				ai.setTime("12:08 PM");
				break;
			case "12:09":
				ai.setTime("12:09 PM");
				break;
			case "12:10":
				ai.setTime("12:10 PM");
				break;
			case "12:11":
				ai.setTime("12:11 PM");
				break;
			case "12:12":
				ai.setTime("12:12 PM");
				break;
			case "12:13":
				ai.setTime("12:13 PM");
				break;
			case "12:14":
				ai.setTime("12:14 PM");
				break;
			case "12:15":
				ai.setTime("12:15 PM");
				break;
			case "12:16":
				ai.setTime("12:16 PM");
				break;
			case "12:17":
				ai.setTime("12:17 PM");
				break;
			case "12:18":
				ai.setTime("12:18 PM");
				break;
			case "12:19":
				ai.setTime("12:19 PM");
				break;
			case "12:20":
				ai.setTime("12:20 PM");
				break;
			case "12:21":
				ai.setTime("12:21 PM");
				break;
			case "12:22":
				ai.setTime("12:22 PM");
				break;
			case "12:23":
				ai.setTime("12:23 PM");
				break;
			case "12:24":
				ai.setTime("12:24 PM");
				break;
			case "12:25":
				ai.setTime("12:25 PM");
				break;
			case "12:26":
				ai.setTime("12:26 PM");
				break;
			case "12:27":
				ai.setTime("12:27 PM");
				break;
			case "12:28":
				ai.setTime("12:28 PM");
				break;
			case "12:29":
				ai.setTime("12:29 PM");
				break;
			case "12:30":
				ai.setTime("12:30 PM");
				break;
			case "12:31":
				ai.setTime("12:31 PM");
				break;
			case "12:32":
				ai.setTime("12:32 PM");
				break;
			case "12:33":
				ai.setTime("12:33 PM");
				break;
			case "12:34":
				ai.setTime("12:34 PM");
				break;
			case "12:35":
				ai.setTime("12:35 PM");
				break;
			case "12:36":
				ai.setTime("12:36 PM");
				break;
			case "12:37":
				ai.setTime("12:37 PM");
				break;
			case "12:38":
				ai.setTime("12:38 PM");
				break;
			case "12:39":
				ai.setTime("12:39 PM");
				break;
			case "12:40":
				ai.setTime("12:40 PM");
				break;
			case "12:41":
				ai.setTime("12:41 PM");
				break;
			case "12:42":
				ai.setTime("12:42 PM");
				break;
			case "12:43":
				ai.setTime("12:43 PM");
				break;
			case "12:44":
				ai.setTime("12:44 PM");
				break;
			case "12:45":
				ai.setTime("12:45 PM");
				break;
			case "12:46":
				ai.setTime("12:46 PM");
				break;
			case "12:47":
				ai.setTime("12:47 PM");
				break;
			case "12:48":
				ai.setTime("12:48 PM");
				break;
			case "12:49":
				ai.setTime("12:49 PM");
				break;
			case "12:50":
				ai.setTime("12:50 PM");
				break;
			case "12:51":
				ai.setTime("12:51 PM");
				break;
			case "12:52":
				ai.setTime("12:52 PM");
				break;
			case "12:53":
				ai.setTime("12:53 PM");
				break;
			case "12:54":
				ai.setTime("12:54 PM");
				break;
			case "12:55":
				ai.setTime("12:55 PM");
				break;
			case "12:56":
				ai.setTime("12:56 PM");
				break;
			case "12:57":
				ai.setTime("12:57 PM");
				break;
			case "12:58":
				ai.setTime("12:58 PM");
				break;
			case "12:59":
				ai.setTime("12:59 PM");
				break;
			case "13:00":
				ai.setTime("01:00 PM");
				break;
			case "13:01":
				ai.setTime("01:01 PM");
				break;
			case "13:02":
				ai.setTime("01:02 PM");
				break;
			case "13:03":
				ai.setTime("01:03 PM");
				break;
			case "13:04":
				ai.setTime("01:04 PM");
				break;
			case "13:05":
				ai.setTime("01:05 PM");
				break;
			case "13:06":
				ai.setTime("01:06 PM");
				break;
			case "13:07":
				ai.setTime("01:07 PM");
				break;
			case "13:08":
				ai.setTime("01:08 PM");
				break;
			case "13:09":
				ai.setTime("01:09 PM");
				break;
			case "13:10":
				ai.setTime("01:10 PM");
				break;
			case "13:11":
				ai.setTime("01:11 PM");
				break;
			case "13:12":
				ai.setTime("01:12 PM");
				break;
			case "13:13":
				ai.setTime("01:13 PM");
				break;
			case "13:14":
				ai.setTime("01:14 PM");
				break;
			case "13:15":
				ai.setTime("01:15 PM");
				break;
			case "13:16":
				ai.setTime("01:16 PM");
				break;
			case "13:17":
				ai.setTime("01:17 PM");
				break;
			case "13:18":
				ai.setTime("01:18 PM");
				break;
			case "13:19":
				ai.setTime("01:19 PM");
				break;
			case "13:20":
				ai.setTime("01:20 PM");
				break;
			case "13:21":
				ai.setTime("01:21 PM");
				break;
			case "13:22":
				ai.setTime("01:22 PM");
				break;
			case "13:23":
				ai.setTime("01:23 PM");
				break;
			case "13:24":
				ai.setTime("01:24 PM");
				break;
			case "13:25":
				ai.setTime("01:25 PM");
				break;
			case "13:26":
				ai.setTime("01:26 PM");
				break;
			case "13:27":
				ai.setTime("01:27 PM");
				break;
			case "13:28":
				ai.setTime("01:28 PM");
				break;
			case "13:29":
				ai.setTime("01:29 PM");
				break;
			case "13:30":
				ai.setTime("01:30 PM");
				break;
			case "13:31":
				ai.setTime("01:31 PM");
				break;
			case "13:32":
				ai.setTime("01:32 PM");
				break;
			case "13:33":
				ai.setTime("01:33 PM");
				break;
			case "13:34":
				ai.setTime("01:34 PM");
				break;
			case "13:35":
				ai.setTime("01:35 PM");
				break;
			case "13:36":
				ai.setTime("01:36 PM");
				break;
			case "13:37":
				ai.setTime("01:37 PM");
				break;
			case "13:38":
				ai.setTime("01:38 PM");
				break;
			case "13:39":
				ai.setTime("01:39 PM");
				break;
			case "13:40":
				ai.setTime("01:40 PM");
				break;
			case "13:41":
				ai.setTime("01:41 PM");
				break;
			case "13:42":
				ai.setTime("01:42 PM");
				break;
			case "13:43":
				ai.setTime("01:43 PM");
				break;
			case "13:44":
				ai.setTime("01:44 PM");
				break;
			case "13:45":
				ai.setTime("01:45 PM");
				break;
			case "13:46":
				ai.setTime("01:46 PM");
				break;
			case "13:47":
				ai.setTime("01:47 PM");
				break;
			case "13:48":
				ai.setTime("01:48 PM");
				break;
			case "13:49":
				ai.setTime("01:49 PM");
				break;
			case "13:50":
				ai.setTime("01:50 PM");
				break;
			case "13:51":
				ai.setTime("01:51 PM");
				break;
			case "13:52":
				ai.setTime("01:52 PM");
				break;
			case "13:53":
				ai.setTime("01:53 PM");
				break;
			case "13:54":
				ai.setTime("01:54 PM");
				break;
			case "13:55":
				ai.setTime("01:55 PM");
				break;
			case "13:56":
				ai.setTime("01:56 PM");
				break;
			case "13:57":
				ai.setTime("01:57 PM");
				break;
			case "13:58":
				ai.setTime("01:58 PM");
				break;
			case "13:59":
				ai.setTime("01:59 PM");
				break;
			case "14:00":
				ai.setTime("02:00 PM");
				break;
			case "14:01":
				ai.setTime("02:01 PM");
				break;
			case "14:02":
				ai.setTime("02:02 PM");
				break;
			case "14:03":
				ai.setTime("02:03 PM");
				break;
			case "14:04":
				ai.setTime("02:04 PM");
				break;
			case "14:05":
				ai.setTime("02:05 PM");
				break;
			case "14:06":
				ai.setTime("02:06 PM");
				break;
			case "14:07":
				ai.setTime("02:07 PM");
				break;
			case "14:08":
				ai.setTime("02:08 PM");
				break;
			case "14:09":
				ai.setTime("02:09 PM");
				break;
			case "14:10":
				ai.setTime("02:10 PM");
				break;
			case "14:11":
				ai.setTime("02:11 PM");
				break;
			case "14:12":
				ai.setTime("02:12 PM");
				break;
			case "14:13":
				ai.setTime("02:13 PM");
				break;
			case "14:14":
				ai.setTime("02:14 PM");
				break;
			case "14:15":
				ai.setTime("02:15 PM");
				break;
			case "14:16":
				ai.setTime("02:16 PM");
				break;
			case "14:17":
				ai.setTime("02:17 PM");
				break;
			case "14:18":
				ai.setTime("02:18 PM");
				break;
			case "14:19":
				ai.setTime("02:19 PM");
				break;
			case "14:20":
				ai.setTime("02:20 PM");
				break;
			case "14:21":
				ai.setTime("02:21 PM");
				break;
			case "14:22":
				ai.setTime("02:22 PM");
				break;
			case "14:23":
				ai.setTime("02:23 PM");
				break;
			case "14:24":
				ai.setTime("02:24 PM");
				break;
			case "14:25":
				ai.setTime("02:25 PM");
				break;
			case "14:26":
				ai.setTime("02:26 PM");
				break;
			case "14:27":
				ai.setTime("02:27 PM");
				break;
			case "14:28":
				ai.setTime("02:28 PM");
				break;
			case "14:29":
				ai.setTime("02:29 PM");
				break;
			case "14:30":
				ai.setTime("02:30 PM");
				break;
			case "14:31":
				ai.setTime("02:31 PM");
				break;
			case "14:32":
				ai.setTime("02:32 PM");
				break;
			case "14:33":
				ai.setTime("02:33 PM");
				break;
			case "14:34":
				ai.setTime("02:34 PM");
				break;
			case "14:35":
				ai.setTime("02:35 PM");
				break;
			case "14:36":
				ai.setTime("02:36 PM");
				break;
			case "14:37":
				ai.setTime("02:37 PM");
				break;
			case "14:38":
				ai.setTime("02:38 PM");
				break;
			case "14:39":
				ai.setTime("02:39 PM");
				break;
			case "14:40":
				ai.setTime("02:40 PM");
				break;
			case "14:41":
				ai.setTime("02:41 PM");
				break;
			case "14:42":
				ai.setTime("02:42 PM");
				break;
			case "14:43":
				ai.setTime("02:43 PM");
				break;
			case "14:44":
				ai.setTime("02:44 PM");
				break;
			case "14:45":
				ai.setTime("02:45 PM");
				break;
			case "14:46":
				ai.setTime("02:46 PM");
				break;
			case "14:47":
				ai.setTime("02:47 PM");
				break;
			case "14:48":
				ai.setTime("02:48 PM");
				break;
			case "14:49":
				ai.setTime("02:49 PM");
				break;
			case "14:50":
				ai.setTime("02:50 PM");
				break;
			case "14:51":
				ai.setTime("02:51 PM");
				break;
			case "14:52":
				ai.setTime("02:52 PM");
				break;
			case "14:53":
				ai.setTime("02:53 PM");
				break;
			case "14:54":
				ai.setTime("02:54 PM");
				break;
			case "14:55":
				ai.setTime("02:55 PM");
				break;
			case "14:56":
				ai.setTime("02:56 PM");
				break;
			case "14:57":
				ai.setTime("02:57 PM");
				break;
			case "14:58":
				ai.setTime("02:58 PM");
				break;
			case "14:59":
				ai.setTime("02:59 PM");
				break;
			case "15:00":
				ai.setTime("03:00 PM");
				break;
			case "15:01":
				ai.setTime("03:01 PM");
				break;
			case "15:02":
				ai.setTime("03:02 PM");
				break;
			case "15:03":
				ai.setTime("03:03 PM");
				break;
			case "15:04":
				ai.setTime("03:04 PM");
				break;
			case "15:05":
				ai.setTime("03:05 PM");
				break;
			case "15:06":
				ai.setTime("03:06 PM");
				break;
			case "15:07":
				ai.setTime("03:07 PM");
				break;
			case "15:08":
				ai.setTime("03:08 PM");
				break;
			case "15:09":
				ai.setTime("03:09 PM");
				break;
			case "15:10":
				ai.setTime("03:10 PM");
				break;
			case "15:11":
				ai.setTime("03:11 PM");
				break;
			case "15:12":
				ai.setTime("03:12 PM");
				break;
			case "15:13":
				ai.setTime("03:13 PM");
				break;
			case "15:14":
				ai.setTime("03:14 PM");
				break;
			case "15:15":
				ai.setTime("03:15 PM");
				break;
			case "15:16":
				ai.setTime("03:16 PM");
				break;
			case "15:17":
				ai.setTime("03:17 PM");
				break;
			case "15:18":
				ai.setTime("03:18 PM");
				break;
			case "15:19":
				ai.setTime("03:19 PM");
				break;
			case "15:20":
				ai.setTime("03:20 PM");
				break;
			case "15:21":
				ai.setTime("03:21 PM");
				break;
			case "15:22":
				ai.setTime("03:22 PM");
				break;
			case "15:23":
				ai.setTime("03:23 PM");
				break;
			case "15:24":
				ai.setTime("03:24 PM");
				break;
			case "15:25":
				ai.setTime("03:25 PM");
				break;
			case "15:26":
				ai.setTime("03:26 PM");
				break;
			case "15:27":
				ai.setTime("03:27 PM");
				break;
			case "15:28":
				ai.setTime("03:28 PM");
				break;
			case "15:29":
				ai.setTime("03:29 PM");
				break;
			case "15:30":
				ai.setTime("03:30 PM");
				break;
			case "15:31":
				ai.setTime("03:31 PM");
				break;
			case "15:32":
				ai.setTime("03:32 PM");
				break;
			case "15:33":
				ai.setTime("03:33 PM");
				break;
			case "15:34":
				ai.setTime("03:34 PM");
				break;
			case "15:35":
				ai.setTime("03:35 PM");
				break;
			case "15:36":
				ai.setTime("03:36 PM");
				break;
			case "15:37":
				ai.setTime("03:37 PM");
				break;
			case "15:38":
				ai.setTime("03:38 PM");
				break;
			case "15:39":
				ai.setTime("03:39 PM");
				break;
			case "15:40":
				ai.setTime("03:40 PM");
				break;
			case "15:41":
				ai.setTime("03:41 PM");
				break;
			case "15:42":
				ai.setTime("03:42 PM");
				break;
			case "15:43":
				ai.setTime("03:43 PM");
				break;
			case "15:44":
				ai.setTime("03:44 PM");
				break;
			case "15:45":
				ai.setTime("03:45 PM");
				break;
			case "15:46":
				ai.setTime("03:46 PM");
				break;
			case "15:47":
				ai.setTime("03:47 PM");
				break;
			case "15:48":
				ai.setTime("03:48 PM");
				break;
			case "15:49":
				ai.setTime("03:49 PM");
				break;
			case "15:50":
				ai.setTime("03:50 PM");
				break;
			case "15:51":
				ai.setTime("03:51 PM");
				break;
			case "15:52":
				ai.setTime("03:52 PM");
				break;
			case "15:53":
				ai.setTime("03:53 PM");
				break;
			case "15:54":
				ai.setTime("03:54 PM");
				break;
			case "15:55":
				ai.setTime("03:55 PM");
				break;
			case "15:56":
				ai.setTime("03:56 PM");
				break;
			case "15:57":
				ai.setTime("03:57 PM");
				break;
			case "15:58":
				ai.setTime("03:58 PM");
				break;
			case "15:59":
				ai.setTime("03:59 PM");
				break;
			case "16:00":
				ai.setTime("04:00 PM");
				break;
			case "16:01":
				ai.setTime("04:01 PM");
				break;
			case "16:02":
				ai.setTime("04:02 PM");
				break;
			case "16:03":
				ai.setTime("04:03 PM");
				break;
			case "16:04":
				ai.setTime("04:04 PM");
				break;
			case "16:05":
				ai.setTime("04:05 PM");
				break;
			case "16:06":
				ai.setTime("04:06 PM");
				break;
			case "16:07":
				ai.setTime("04:07 PM");
				break;
			case "16:08":
				ai.setTime("04:08 PM");
				break;
			case "16:09":
				ai.setTime("04:09 PM");
				break;
			case "16:10":
				ai.setTime("04:10 PM");
				break;
			case "16:11":
				ai.setTime("04:11 PM");
				break;
			case "16:12":
				ai.setTime("04:12 PM");
				break;
			case "16:13":
				ai.setTime("04:13 PM");
				break;
			case "16:14":
				ai.setTime("04:14 PM");
				break;
			case "16:15":
				ai.setTime("04:15 PM");
				break;
			case "16:16":
				ai.setTime("04:16 PM");
				break;
			case "16:17":
				ai.setTime("04:17 PM");
				break;
			case "16:18":
				ai.setTime("04:18 PM");
				break;
			case "16:19":
				ai.setTime("04:19 PM");
				break;
			case "16:20":
				ai.setTime("04:20 PM");
				break;
			case "16:21":
				ai.setTime("04:21 PM");
				break;
			case "16:22":
				ai.setTime("04:22 PM");
				break;
			case "16:23":
				ai.setTime("04:23 PM");
				break;
			case "16:24":
				ai.setTime("04:24 PM");
				break;
			case "16:25":
				ai.setTime("04:25 PM");
				break;
			case "16:26":
				ai.setTime("04:26 PM");
				break;
			case "16:27":
				ai.setTime("04:27 PM");
				break;
			case "16:28":
				ai.setTime("04:28 PM");
				break;
			case "16:29":
				ai.setTime("04:29 PM");
				break;
			case "16:30":
				ai.setTime("04:30 PM");
				break;
			case "16:31":
				ai.setTime("04:31 PM");
				break;
			case "16:32":
				ai.setTime("04:32 PM");
				break;
			case "16:33":
				ai.setTime("04:33 PM");
				break;
			case "16:34":
				ai.setTime("04:34 PM");
				break;
			case "16:35":
				ai.setTime("04:35 PM");
				break;
			case "16:36":
				ai.setTime("04:36 PM");
				break;
			case "16:37":
				ai.setTime("04:37 PM");
				break;
			case "16:38":
				ai.setTime("04:38 PM");
				break;
			case "16:39":
				ai.setTime("04:39 PM");
				break;
			case "16:40":
				ai.setTime("04:40 PM");
				break;
			case "16:41":
				ai.setTime("04:41 PM");
				break;
			case "16:42":
				ai.setTime("04:42 PM");
				break;
			case "16:43":
				ai.setTime("04:43 PM");
				break;
			case "16:44":
				ai.setTime("04:44 PM");
				break;
			case "16:45":
				ai.setTime("04:45 PM");
				break;
			case "16:46":
				ai.setTime("04:46 PM");
				break;
			case "16:47":
				ai.setTime("04:47 PM");
				break;
			case "16:48":
				ai.setTime("04:48 PM");
				break;
			case "16:49":
				ai.setTime("04:49 PM");
				break;
			case "16:50":
				ai.setTime("04:50 PM");
				break;
			case "16:51":
				ai.setTime("04:51 PM");
				break;
			case "16:52":
				ai.setTime("04:52 PM");
				break;
			case "16:53":
				ai.setTime("04:53 PM");
				break;
			case "16:54":
				ai.setTime("04:54 PM");
				break;
			case "16:55":
				ai.setTime("04:55 PM");
				break;
			case "16:56":
				ai.setTime("04:56 PM");
				break;
			case "16:57":
				ai.setTime("04:57 PM");
				break;
			case "16:58":
				ai.setTime("04:58 PM");
				break;
			case "16:59":
				ai.setTime("04:59 PM");
				break;		
			case "17:00":
				ai.setTime("05:00 PM");
				break;
			case "17:01":
				ai.setTime("05:01 PM");
				break;
			case "17:02":
				ai.setTime("05:02 PM");
				break;
			case "17:03":
				ai.setTime("05:03 PM");
				break;
			case "17:04":
				ai.setTime("05:04 PM");
				break;
			case "17:05":
				ai.setTime("05:05 PM");
				break;
			case "17:06":
				ai.setTime("05:06 PM");
				break;
			case "17:07":
				ai.setTime("05:07 PM");
				break;
			case "17:08":
				ai.setTime("05:08 PM");
				break;
			case "17:09":
				ai.setTime("05:09 PM");
				break;
			case "17:10":
				ai.setTime("05:10 PM");
				break;
			case "17:11":
				ai.setTime("05:11 PM");
				break;
			case "17:12":
				ai.setTime("05:12 PM");
				break;
			case "17:13":
				ai.setTime("05:13 PM");
				break;
			case "17:14":
				ai.setTime("05:14 PM");
				break;
			case "17:15":
				ai.setTime("05:15 PM");
				break;
			case "17:16":
				ai.setTime("05:16 PM");
				break;
			case "17:17":
				ai.setTime("05:17 PM");
				break;
			case "17:18":
				ai.setTime("05:18 PM");
				break;
			case "17:19":
				ai.setTime("05:19 PM");
				break;
			case "17:20":
				ai.setTime("05:20 PM");
				break;
			case "17:21":
				ai.setTime("05:21 PM");
				break;
			case "17:22":
				ai.setTime("05:22 PM");
				break;
			case "17:23":
				ai.setTime("05:23 PM");
				break;
			case "17:24":
				ai.setTime("05:24 PM");
				break;
			case "17:25":
				ai.setTime("05:25 PM");
				break;
			case "17:26":
				ai.setTime("05:26 PM");
				break;
			case "17:27":
				ai.setTime("05:27 PM");
				break;
			case "17:28":
				ai.setTime("05:28 PM");
				break;
			case "17:29":
				ai.setTime("05:29 PM");
				break;
			case "17:30":
				ai.setTime("05:30 PM");
				break;
			case "17:31":
				ai.setTime("05:31 PM");
				break;
			case "17:32":
				ai.setTime("05:32 PM");
				break;
			case "17:33":
				ai.setTime("05:33 PM");
				break;
			case "17:34":
				ai.setTime("05:34 PM");
				break;
			case "17:35":
				ai.setTime("05:35 PM");
				break;
			case "17:36":
				ai.setTime("05:36 PM");
				break;
			case "17:37":
				ai.setTime("05:37 PM");
				break;
			case "17:38":
				ai.setTime("05:38 PM");
				break;
			case "17:39":
				ai.setTime("05:39 PM");
				break;
			case "17:40":
				ai.setTime("05:40 PM");
				break;
			case "17:41":
				ai.setTime("05:41 PM");
				break;
			case "17:42":
				ai.setTime("05:42 PM");
				break;
			case "17:43":
				ai.setTime("05:43 PM");
				break;
			case "17:44":
				ai.setTime("05:44 PM");
				break;
			case "17:45":
				ai.setTime("05:45 PM");
				break;
			case "17:46":
				ai.setTime("05:46 PM");
				break;
			case "17:47":
				ai.setTime("05:47 PM");
				break;
			case "17:48":
				ai.setTime("05:48 PM");
				break;
			case "17:49":
				ai.setTime("05:49 PM");
				break;
			case "17:50":
				ai.setTime("05:50 PM");
				break;
			case "17:51":
				ai.setTime("05:51 PM");
				break;
			case "17:52":
				ai.setTime("05:52 PM");
				break;
			case "17:53":
				ai.setTime("05:53 PM");
				break;
			case "17:54":
				ai.setTime("05:54 PM");
				break;
			case "17:55":
				ai.setTime("05:55 PM");
				break;
			case "17:56":
				ai.setTime("05:56 PM");
				break;
			case "17:57":
				ai.setTime("05:57 PM");
				break;
			case "17:58":
				ai.setTime("05:58 PM");
				break;
			case "17:59":
				ai.setTime("05:59 PM");
				break;
			case "18:00":
				ai.setTime("06:00 PM");
				break;
			case "18:01":
				ai.setTime("06:01 PM");
				break;
			case "18:02":
				ai.setTime("06:02 PM");
				break;
			case "18:03":
				ai.setTime("06:03 PM");
				break;
			case "18:04":
				ai.setTime("06:04 PM");
				break;
			case "18:05":
				ai.setTime("06:05 PM");
				break;
			case "18:06":
				ai.setTime("06:06 PM");
				break;
			case "18:07":
				ai.setTime("06:07 PM");
				break;
			case "18:08":
				ai.setTime("06:08 PM");
				break;
			case "18:09":
				ai.setTime("06:09 PM");
				break;
			case "18:10":
				ai.setTime("06:10 PM");
				break;
			case "18:11":
				ai.setTime("06:11 PM");
				break;
			case "18:12":
				ai.setTime("06:12 PM");
				break;
			case "18:13":
				ai.setTime("06:13 PM");
				break;
			case "18:14":
				ai.setTime("06:14 PM");
				break;
			case "18:15":
				ai.setTime("06:15 PM");
				break;
			case "18:16":
				ai.setTime("06:16 PM");
				break;
			case "18:17":
				ai.setTime("06:17 PM");
				break;
			case "18:18":
				ai.setTime("06:18 PM");
				break;
			case "18:19":
				ai.setTime("06:19 PM");
				break;
			case "18:20":
				ai.setTime("06:20 PM");
				break;
			case "18:21":
				ai.setTime("06:21 PM");
				break;
			case "18:22":
				ai.setTime("06:22 PM");
				break;
			case "18:23":
				ai.setTime("06:23 PM");
				break;
			case "18:24":
				ai.setTime("06:24 PM");
				break;
			case "18:25":
				ai.setTime("06:25 PM");
				break;
			case "18:26":
				ai.setTime("06:26 PM");
				break;
			case "18:27":
				ai.setTime("06:27 PM");
				break;
			case "18:28":
				ai.setTime("06:28 PM");
				break;
			case "18:29":
				ai.setTime("06:29 PM");
				break;
			case "18:30":
				ai.setTime("06:30 PM");
				break;
			case "18:31":
				ai.setTime("06:31 PM");
				break;
			case "18:32":
				ai.setTime("06:32 PM");
				break;
			case "18:33":
				ai.setTime("06:33 PM");
				break;
			case "18:34":
				ai.setTime("06:34 PM");
				break;
			case "18:35":
				ai.setTime("06:35 PM");
				break;
			case "18:36":
				ai.setTime("06:36 PM");
				break;
			case "18:37":
				ai.setTime("06:37 PM");
				break;
			case "18:38":
				ai.setTime("06:38 PM");
				break;
			case "18:39":
				ai.setTime("06:39 PM");
				break;
			case "18:40":
				ai.setTime("06:40 PM");
				break;
			case "18:41":
				ai.setTime("06:41 PM");
				break;
			case "18:42":
				ai.setTime("06:42 PM");
				break;
			case "18:43":
				ai.setTime("06:43 PM");
				break;
			case "18:44":
				ai.setTime("06:44 PM");
				break;
			case "18:45":
				ai.setTime("06:45 PM");
				break;
			case "18:46":
				ai.setTime("06:46 PM");
				break;
			case "18:47":
				ai.setTime("06:47 PM");
				break;
			case "18:48":
				ai.setTime("06:48 PM");
				break;
			case "18:49":
				ai.setTime("06:49 PM");
				break;
			case "18:50":
				ai.setTime("06:50 PM");
				break;
			case "18:51":
				ai.setTime("06:51 PM");
				break;
			case "18:52":
				ai.setTime("06:52 PM");
				break;
			case "18:53":
				ai.setTime("06:53 PM");
				break;
			case "18:54":
				ai.setTime("06:54 PM");
				break;
			case "18:55":
				ai.setTime("06:55 PM");
				break;
			case "18:56":
				ai.setTime("06:56 PM");
				break;
			case "18:57":
				ai.setTime("06:57 PM");
				break;
			case "18:58":
				ai.setTime("06:58 PM");
				break;
			case "18:59":
				ai.setTime("06:59 PM");
				break;				
			case "19:00":
				ai.setTime("07:00 PM");
				break;
			case "19:01":
				ai.setTime("07:01 PM");
				break;
			case "19:02":
				ai.setTime("07:02 PM");
				break;
			case "19:03":
				ai.setTime("07:03 PM");
				break;
			case "19:04":
				ai.setTime("07:04 PM");
				break;
			case "19:05":
				ai.setTime("07:05 PM");
				break;
			case "19:06":
				ai.setTime("07:06 PM");
				break;
			case "19:07":
				ai.setTime("07:07 PM");
				break;
			case "19:08":
				ai.setTime("07:08 PM");
				break;
			case "19:09":
				ai.setTime("07:09 PM");
				break;
			case "19:10":
				ai.setTime("07:10 PM");
				break;
			case "19:11":
				ai.setTime("07:11 PM");
				break;
			case "19:12":
				ai.setTime("07:12 PM");
				break;
			case "19:13":
				ai.setTime("07:13 PM");
				break;
			case "19:14":
				ai.setTime("07:14 PM");
				break;
			case "19:15":
				ai.setTime("07:15 PM");
				break;
			case "19:16":
				ai.setTime("07:16 PM");
				break;
			case "19:17":
				ai.setTime("07:17 PM");
				break;
			case "19:18":
				ai.setTime("07:18 PM");
				break;
			case "19:19":
				ai.setTime("07:19 PM");
				break;
			case "19:20":
				ai.setTime("07:20 PM");
				break;
			case "19:21":
				ai.setTime("07:21 PM");
				break;
			case "19:22":
				ai.setTime("07:22 PM");
				break;
			case "19:23":
				ai.setTime("07:23 PM");
				break;
			case "19:24":
				ai.setTime("07:24 PM");
				break;
			case "19:25":
				ai.setTime("07:25 PM");
				break;
			case "19:26":
				ai.setTime("07:26 PM");
				break;
			case "19:27":
				ai.setTime("07:27 PM");
				break;
			case "19:28":
				ai.setTime("07:28 PM");
				break;
			case "19:29":
				ai.setTime("07:29 PM");
				break;
			case "19:30":
				ai.setTime("07:30 PM");
				break;
			case "19:31":
				ai.setTime("07:31 PM");
				break;
			case "19:32":
				ai.setTime("07:32 PM");
				break;
			case "19:33":
				ai.setTime("07:33 PM");
				break;
			case "19:34":
				ai.setTime("07:34 PM");
				break;
			case "19:35":
				ai.setTime("07:35 PM");
				break;
			case "19:36":
				ai.setTime("07:36 PM");
				break;
			case "19:37":
				ai.setTime("07:37 PM");
				break;
			case "19:38":
				ai.setTime("07:38 PM");
				break;
			case "19:39":
				ai.setTime("07:39 PM");
				break;
			case "19:40":
				ai.setTime("07:40 PM");
				break;
			case "19:41":
				ai.setTime("07:41 PM");
				break;
			case "19:42":
				ai.setTime("07:42 PM");
				break;
			case "19:43":
				ai.setTime("07:43 PM");
				break;
			case "19:44":
				ai.setTime("07:44 PM");
				break;
			case "19:45":
				ai.setTime("07:45 PM");
				break;
			case "19:46":
				ai.setTime("07:46 PM");
				break;
			case "19:47":
				ai.setTime("07:47 PM");
				break;
			case "19:48":
				ai.setTime("07:48 PM");
				break;
			case "19:49":
				ai.setTime("07:49 PM");
				break;
			case "19:50":
				ai.setTime("07:50 PM");
				break;
			case "19:51":
				ai.setTime("07:51 PM");
				break;
			case "19:52":
				ai.setTime("07:52 PM");
				break;
			case "19:53":
				ai.setTime("07:53 PM");
				break;
			case "19:54":
				ai.setTime("07:54 PM");
				break;
			case "19:55":
				ai.setTime("07:55 PM");
				break;
			case "19:56":
				ai.setTime("07:56 PM");
				break;
			case "19:57":
				ai.setTime("07:57 PM");
				break;
			case "19:58":
				ai.setTime("07:58 PM");
				break;
			case "19:59":
				ai.setTime("07:59 PM");
				break;				
			case "20:00":
				ai.setTime("08:00 PM");
				break;
			case "20:01":
				ai.setTime("08:01 PM");
				break;
			case "20:02":
				ai.setTime("08:02 PM");
				break;
			case "20:03":
				ai.setTime("08:03 PM");
				break;
			case "20:04":
				ai.setTime("08:04 PM");
				break;
			case "20:05":
				ai.setTime("08:05 PM");
				break;
			case "20:06":
				ai.setTime("08:06 PM");
				break;
			case "20:07":
				ai.setTime("08:07 PM");
				break;
			case "20:08":
				ai.setTime("08:08 PM");
				break;
			case "20:09":
				ai.setTime("08:09 PM");
				break;
			case "20:10":
				ai.setTime("08:10 PM");
				break;
			case "20:11":
				ai.setTime("08:11 PM");
				break;
			case "20:12":
				ai.setTime("08:12 PM");
				break;
			case "20:13":
				ai.setTime("08:13 PM");
				break;
			case "20:14":
				ai.setTime("08:14 PM");
				break;
			case "20:15":
				ai.setTime("08:15 PM");
				break;
			case "20:16":
				ai.setTime("08:16 PM");
				break;
			case "20:17":
				ai.setTime("08:17 PM");
				break;
			case "20:18":
				ai.setTime("08:18 PM");
				break;
			case "20:19":
				ai.setTime("08:19 PM");
				break;
			case "20:20":
				ai.setTime("08:20 PM");
				break;
			case "20:21":
				ai.setTime("08:21 PM");
				break;
			case "20:22":
				ai.setTime("08:22 PM");
				break;
			case "20:23":
				ai.setTime("08:23 PM");
				break;
			case "20:24":
				ai.setTime("08:24 PM");
				break;
			case "20:25":
				ai.setTime("08:25 PM");
				break;
			case "20:26":
				ai.setTime("08:26 PM");
				break;
			case "20:27":
				ai.setTime("08:27 PM");
				break;
			case "20:28":
				ai.setTime("08:28 PM");
				break;
			case "20:29":
				ai.setTime("08:29 PM");
				break;
			case "20:30":
				ai.setTime("08:30 PM");
				break;
			case "20:31":
				ai.setTime("08:31 PM");
				break;
			case "20:32":
				ai.setTime("08:32 PM");
				break;
			case "20:33":
				ai.setTime("08:33 PM");
				break;
			case "20:34":
				ai.setTime("08:34 PM");
				break;
			case "20:35":
				ai.setTime("08:35 PM");
				break;
			case "20:36":
				ai.setTime("08:36 PM");
				break;
			case "20:37":
				ai.setTime("08:37 PM");
				break;
			case "20:38":
				ai.setTime("08:38 PM");
				break;
			case "20:39":
				ai.setTime("08:39 PM");
				break;
			case "20:40":
				ai.setTime("08:40 PM");
				break;
			case "20:41":
				ai.setTime("08:41 PM");
				break;
			case "20:42":
				ai.setTime("08:42 PM");
				break;
			case "20:43":
				ai.setTime("08:43 PM");
				break;
			case "20:44":
				ai.setTime("08:44 PM");
				break;
			case "20:45":
				ai.setTime("08:45 PM");
				break;
			case "20:46":
				ai.setTime("08:46 PM");
				break;
			case "20:47":
				ai.setTime("08:47 PM");
				break;
			case "20:48":
				ai.setTime("08:48 PM");
				break;
			case "20:49":
				ai.setTime("08:49 PM");
				break;
			case "20:50":
				ai.setTime("08:50 PM");
				break;
			case "20:51":
				ai.setTime("08:51 PM");
				break;
			case "20:52":
				ai.setTime("08:52 PM");
				break;
			case "20:53":
				ai.setTime("08:53 PM");
				break;
			case "20:54":
				ai.setTime("08:54 PM");
				break;
			case "20:55":
				ai.setTime("08:55 PM");
				break;
			case "20:56":
				ai.setTime("08:56 PM");
				break;
			case "20:57":
				ai.setTime("08:57 PM");
				break;
			case "20:58":
				ai.setTime("08:58 PM");
				break;
			case "20:59":
				ai.setTime("08:59 PM");
				break;
			case "21:00":
				ai.setTime("09:00 PM");
				break;
			case "21:01":
				ai.setTime("09:01 PM");
				break;
			case "21:02":
				ai.setTime("09:02 PM");
				break;
			case "21:03":
				ai.setTime("09:03 PM");
				break;
			case "21:04":
				ai.setTime("09:04 PM");
				break;
			case "21:05":
				ai.setTime("09:05 PM");
				break;
			case "21:06":
				ai.setTime("09:06 PM");
				break;
			case "21:07":
				ai.setTime("09:07 PM");
				break;
			case "21:08":
				ai.setTime("09:08 PM");
				break;
			case "21:09":
				ai.setTime("09:09 PM");
				break;
			case "21:10":
				ai.setTime("09:10 PM");
				break;
			case "21:11":
				ai.setTime("09:11 PM");
				break;
			case "21:12":
				ai.setTime("09:12 PM");
				break;
			case "21:13":
				ai.setTime("09:13 PM");
				break;
			case "21:14":
				ai.setTime("09:14 PM");
				break;
			case "21:15":
				ai.setTime("09:15 PM");
				break;
			case "21:16":
				ai.setTime("09:16 PM");
				break;
			case "21:17":
				ai.setTime("09:17 PM");
				break;
			case "21:18":
				ai.setTime("09:18 PM");
				break;
			case "21:19":
				ai.setTime("09:19 PM");
				break;
			case "21:20":
				ai.setTime("09:20 PM");
				break;
			case "21:21":
				ai.setTime("09:21 PM");
				break;
			case "21:22":
				ai.setTime("09:22 PM");
				break;
			case "21:23":
				ai.setTime("09:23 PM");
				break;
			case "21:24":
				ai.setTime("09:24 PM");
				break;
			case "21:25":
				ai.setTime("09:25 PM");
				break;
			case "21:26":
				ai.setTime("09:26 PM");
				break;
			case "21:27":
				ai.setTime("09:27 PM");
				break;
			case "21:28":
				ai.setTime("09:28 PM");
				break;
			case "21:29":
				ai.setTime("09:29 PM");
				break;
			case "21:30":
				ai.setTime("09:30 PM");
				break;
			case "21:31":
				ai.setTime("09:31 PM");
				break;
			case "21:32":
				ai.setTime("09:32 PM");
				break;
			case "21:33":
				ai.setTime("09:33 PM");
				break;
			case "21:34":
				ai.setTime("09:34 PM");
				break;
			case "21:35":
				ai.setTime("09:35 PM");
				break;
			case "21:36":
				ai.setTime("09:36 PM");
				break;
			case "21:37":
				ai.setTime("09:37 PM");
				break;
			case "21:38":
				ai.setTime("09:38 PM");
				break;
			case "21:39":
				ai.setTime("09:39 PM");
				break;
			case "21:40":
				ai.setTime("09:40 PM");
				break;
			case "21:41":
				ai.setTime("09:41 PM");
				break;
			case "21:42":
				ai.setTime("09:42 PM");
				break;
			case "21:43":
				ai.setTime("09:43 PM");
				break;
			case "21:44":
				ai.setTime("09:44 PM");
				break;
			case "21:45":
				ai.setTime("09:45 PM");
				break;
			case "21:46":
				ai.setTime("09:46 PM");
				break;
			case "21:47":
				ai.setTime("09:47 PM");
				break;
			case "21:48":
				ai.setTime("09:48 PM");
				break;
			case "21:49":
				ai.setTime("09:49 PM");
				break;
			case "21:50":
				ai.setTime("09:50 PM");
				break;
			case "21:51":
				ai.setTime("09:51 PM");
				break;
			case "21:52":
				ai.setTime("09:52 PM");
				break;
			case "21:53":
				ai.setTime("09:53 PM");
				break;
			case "21:54":
				ai.setTime("09:54 PM");
				break;
			case "21:55":
				ai.setTime("09:55 PM");
				break;
			case "21:56":
				ai.setTime("09:56 PM");
				break;
			case "21:57":
				ai.setTime("09:57 PM");
				break;
			case "21:58":
				ai.setTime("09:58 PM");
				break;
			case "21:59":
				ai.setTime("09:59 PM");
				break;	
			case "22:00":
				ai.setTime("10:00 PM");
				break;
			case "22:01":
				ai.setTime("10:01 PM");
				break;
			case "22:02":
				ai.setTime("10:02 PM");
				break;
			case "22:03":
				ai.setTime("10:03 PM");
				break;
			case "22:04":
				ai.setTime("10:04 PM");
				break;
			case "22:05":
				ai.setTime("10:05 PM");
				break;
			case "22:06":
				ai.setTime("10:06 PM");
				break;
			case "22:07":
				ai.setTime("10:07 PM");
				break;
			case "22:08":
				ai.setTime("10:08 PM");
				break;
			case "22:09":
				ai.setTime("10:09 PM");
				break;
			case "22:10":
				ai.setTime("10:10 PM");
				break;
			case "22:11":
				ai.setTime("10:11 PM");
				break;
			case "22:12":
				ai.setTime("10:12 PM");
				break;
			case "22:13":
				ai.setTime("10:13 PM");
				break;
			case "22:14":
				ai.setTime("10:14 PM");
				break;
			case "22:15":
				ai.setTime("10:15 PM");
				break;
			case "22:16":
				ai.setTime("10:16 PM");
				break;
			case "22:17":
				ai.setTime("10:17 PM");
				break;
			case "22:18":
				ai.setTime("10:18 PM");
				break;
			case "22:19":
				ai.setTime("10:19 PM");
				break;
			case "22:20":
				ai.setTime("10:20 PM");
				break;
			case "22:21":
				ai.setTime("10:21 PM");
				break;
			case "22:22":
				ai.setTime("10:22 PM");
				break;
			case "22:23":
				ai.setTime("10:23 PM");
				break;
			case "22:24":
				ai.setTime("10:24 PM");
				break;
			case "22:25":
				ai.setTime("10:25 PM");
				break;
			case "22:26":
				ai.setTime("10:26 PM");
				break;
			case "22:27":
				ai.setTime("10:27 PM");
				break;
			case "22:28":
				ai.setTime("10:28 PM");
				break;
			case "22:29":
				ai.setTime("10:29 PM");
				break;
			case "22:30":
				ai.setTime("10:30 PM");
				break;
			case "22:31":
				ai.setTime("10:31 PM");
				break;
			case "22:32":
				ai.setTime("10:32 PM");
				break;
			case "22:33":
				ai.setTime("10:33 PM");
				break;
			case "22:34":
				ai.setTime("10:34 PM");
				break;
			case "22:35":
				ai.setTime("10:35 PM");
				break;
			case "22:36":
				ai.setTime("10:36 PM");
				break;
			case "22:37":
				ai.setTime("10:37 PM");
				break;
			case "22:38":
				ai.setTime("10:38 PM");
				break;
			case "22:39":
				ai.setTime("10:39 PM");
				break;
			case "22:40":
				ai.setTime("10:40 PM");
				break;
			case "22:41":
				ai.setTime("10:41 PM");
				break;
			case "22:42":
				ai.setTime("10:42 PM");
				break;
			case "22:43":
				ai.setTime("10:43 PM");
				break;
			case "22:44":
				ai.setTime("10:44 PM");
				break;
			case "22:45":
				ai.setTime("10:45 PM");
				break;
			case "22:46":
				ai.setTime("10:46 PM");
				break;
			case "22:47":
				ai.setTime("10:47 PM");
				break;
			case "22:48":
				ai.setTime("10:48 PM");
				break;
			case "22:49":
				ai.setTime("10:49 PM");
				break;
			case "22:50":
				ai.setTime("10:50 PM");
				break;
			case "22:51":
				ai.setTime("10:51 PM");
				break;
			case "22:52":
				ai.setTime("10:52 PM");
				break;
			case "22:53":
				ai.setTime("10:53 PM");
				break;
			case "22:54":
				ai.setTime("10:54 PM");
				break;
			case "22:55":
				ai.setTime("10:55 PM");
				break;
			case "22:56":
				ai.setTime("10:56 PM");
				break;
			case "22:57":
				ai.setTime("10:57 PM");
				break;
			case "22:58":
				ai.setTime("10:58 PM");
				break;
			case "22:59":
				ai.setTime("10:59 PM");
				break;	
			case "23:00":
				ai.setTime("11:00 PM");
				break;
			case "23:01":
				ai.setTime("11:01 PM");
				break;
			case "23:02":
				ai.setTime("11:02 PM");
				break;
			case "23:03":
				ai.setTime("11:03 PM");
				break;
			case "23:04":
				ai.setTime("11:04 PM");
				break;
			case "23:05":
				ai.setTime("11:05 PM");
				break;
			case "23:06":
				ai.setTime("11:06 PM");
				break;
			case "23:07":
				ai.setTime("11:07 PM");
				break;
			case "23:08":
				ai.setTime("11:08 PM");
				break;
			case "23:09":
				ai.setTime("11:09 PM");
				break;
			case "23:10":
				ai.setTime("11:10 PM");
				break;
			case "23:11":
				ai.setTime("11:11 PM");
				break;
			case "23:12":
				ai.setTime("11:12 PM");
				break;
			case "23:13":
				ai.setTime("11:13 PM");
				break;
			case "23:14":
				ai.setTime("11:14 PM");
				break;
			case "23:15":
				ai.setTime("11:15 PM");
				break;
			case "23:16":
				ai.setTime("11:16 PM");
				break;
			case "23:17":
				ai.setTime("11:17 PM");
				break;
			case "23:18":
				ai.setTime("11:18 PM");
				break;
			case "23:19":
				ai.setTime("11:19 PM");
				break;
			case "23:20":
				ai.setTime("11:20 PM");
				break;
			case "23:21":
				ai.setTime("11:21 PM");
				break;
			case "23:22":
				ai.setTime("11:22 PM");
				break;
			case "23:23":
				ai.setTime("11:23 PM");
				break;
			case "23:24":
				ai.setTime("11:24 PM");
				break;
			case "23:25":
				ai.setTime("11:25 PM");
				break;
			case "23:26":
				ai.setTime("11:26 PM");
				break;
			case "23:27":
				ai.setTime("11:27 PM");
				break;
			case "23:28":
				ai.setTime("11:28 PM");
				break;
			case "23:29":
				ai.setTime("11:29 PM");
				break;
			case "23:30":
				ai.setTime("11:30 PM");
				break;
			case "23:31":
				ai.setTime("11:31 PM");
				break;
			case "23:32":
				ai.setTime("11:32 PM");
				break;
			case "23:33":
				ai.setTime("11:33 PM");
				break;
			case "23:34":
				ai.setTime("11:34 PM");
				break;
			case "23:35":
				ai.setTime("11:35 PM");
				break;
			case "23:36":
				ai.setTime("11:36 PM");
				break;
			case "23:37":
				ai.setTime("11:37 PM");
				break;
			case "23:38":
				ai.setTime("11:38 PM");
				break;
			case "23:39":
				ai.setTime("11:39 PM");
				break;
			case "23:40":
				ai.setTime("11:40 PM");
				break;
			case "23:41":
				ai.setTime("11:41 PM");
				break;
			case "23:42":
				ai.setTime("11:42 PM");
				break;
			case "23:43":
				ai.setTime("11:43 PM");
				break;
			case "23:44":
				ai.setTime("11:44 PM");
				break;
			case "23:45":
				ai.setTime("11:45 PM");
				break;
			case "23:46":
				ai.setTime("11:46 PM");
				break;
			case "23:47":
				ai.setTime("11:47 PM");
				break;
			case "23:48":
				ai.setTime("11:48 PM");
				break;
			case "23:49":
				ai.setTime("11:49 PM");
				break;
			case "23:50":
				ai.setTime("11:50 PM");
				break;
			case "23:51":
				ai.setTime("11:51 PM");
				break;
			case "23:52":
				ai.setTime("11:52 PM");
				break;
			case "23:53":
				ai.setTime("11:53 PM");
				break;
			case "23:54":
				ai.setTime("11:54 PM");
				break;
			case "23:55":
				ai.setTime("11:55 PM");
				break;
			case "23:56":
				ai.setTime("11:56 PM");
				break;
			case "23:57":
				ai.setTime("11:57 PM");
				break;
			case "23:58":
				ai.setTime("11:58 PM");
				break;
			case "23:59":
				ai.setTime("11:59 PM");
				break;				
			default:
				ai.setTime(request.getParameter("time") + " AM");
		}
	    		
		System.out.println("Eto na time youssss   " + request.getParameter("time"));	
		System.out.println("Eto na time you   " + ai.getTime());		
		ai.setWaybill_no(request.getParameter("waybill_no"));
		ai.setSite(request.getParameter("site"));
		ai.setSku(request.getParameter("sku"));
		ai.setStatus(request.getParameter("status"));
		ids = atmInfosService.getMaxIdAtmInfo();
		System.out.println("Eto na   " + ids);
		atmInfosService.addAtmInfo(ids, ai);
		request.getRequestDispatcher("ATM2Servlet").forward(request, response);
	}

}
