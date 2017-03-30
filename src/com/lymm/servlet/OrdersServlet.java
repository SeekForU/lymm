package com.lymm.servlet;

import com.lymm.dao.OrdersDAO;
import com.lymm.domian.Orders;
import com.lymm.impl.OrdersDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by ${Seek} on 2017/3/28
 */
@WebServlet("/ordersServlet")
public class OrdersServlet extends HttpServlet {

	OrdersDAO ordersDAO = new OrdersDAOImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String methodName = request.getParameter("method");

		try {
			Method method = getClass().getDeclaredMethod(methodName,
					HttpServletRequest.class, HttpServletResponse.class);
			method.invoke(this, request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 预约列表
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void orderList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {



		HttpSession httpSession = request.getSession();
		String trueName = (String) httpSession.getAttribute("trueName");
		//TODO
		List<Orders> ordersList = ordersDAO.getOrders(trueName);
		request.setAttribute("ordersList", ordersList);
		//版本1
		//request.getRequestDispatcher("orderList.jsp").forward(request,response);
		// 版本2
		request.getRequestDispatcher("pages/orderList.jsp").forward(request,response);
	}

	/**
	 * 取消预约
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private void cancel(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String idStr = request.getParameter("id");
		int id = -1;

		try {
			id = Integer.parseInt(idStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		ordersDAO.deleteOrder(id);
		//HttpSession session=request.getSession();
		//	String trueName=(String)session.getAttribute("trueName");
		List<Orders> ordersList = ordersDAO.getOrders("Hello");
		request.setAttribute("ordersList", ordersList);
		//版本1
		//request.getRequestDispatcher("orderList.jsp").forward(request,response);
		//版本2
		request.getRequestDispatcher("pages/orderList.jsp").forward(request,response);
	}


	/**
	 * 增加预约记录
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void order(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String trueName = request.getParameter("trueName");
		//String trueName = "Hello";
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		String time = request.getParameter("time");
		//System.out.println(time);

		System.out.println(type);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		PrintWriter out = response.getWriter();
		try {
			Date date=sdf.parse(time);
			Orders orders = new Orders(trueName, name, date, type);
			System.out.println(orders);
			if (orders != null) {
				ordersDAO.AddOrders(orders);
				//out.print("<script type='text/javascript'>alert('Order Successful');window.location='doctors.jsp';</script>");
				out.print("<script type='text/javascript'>alert('Order Successful');window.location='pages/doctor.jsp';</script>");
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}
