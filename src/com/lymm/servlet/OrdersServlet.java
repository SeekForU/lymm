package com.lymm.servlet;

import com.lymm.dao.OrdersDAO;
import com.lymm.domian.Orders;
import com.lymm.impl.OrdersDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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

	protected void order(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//String trueName = request.getParameter("trueName");
		String trueName = "Hello";
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		String time = request.getParameter("time");
		System.out.println(time);

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		PrintWriter out = response.getWriter();
		try {
			Date date=sdf.parse(time);
			Orders orders = new Orders(trueName, name, date, type);
			System.out.println(orders);
			if (orders != null) {
				ordersDAO.AddOrders(orders);
				out.print("<script type='text/javascript'>alert('Order Successful');window.location='doctors.jsp';</script>");
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}


		//response.setContentType("text/html;charset=GBK");
		//PrintWriter out = response.getWriter();
		//if (order.addOrder(tureName, type, time, name)) {
		//	out.print("<script type='text/javascript'>alert('预定成功');window.location='home.jsp';</script>");
		//} else {
		//
		//	out.print("<script type='text/javascript'>alert('预定失败');history.go(-1);</script>");
		//}
	}


}
