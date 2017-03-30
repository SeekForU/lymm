package com.lymm.servlet;

import com.lymm.service.UsersService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.Method;

/**
 * Created by ${Seek} on 2017/3/28
 */
@WebServlet("/usersServlet")
public class UsersServlet extends HttpServlet {

	UsersService usersService = new UsersService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String methodName = request.getParameter("method");
		try {
			Method method = getClass().getDeclaredMethod(methodName,
					HttpServletRequest.class, HttpServletResponse.class);
			method.invoke(this,request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nameStr = request.getParameter("username");
		String passwordStr = request.getParameter("textfield2");
		System.out.println("111");
		if (usersService.login(nameStr, passwordStr)) {
			HttpSession session=request.getSession();
			session.setAttribute("trueName", nameStr);
			request.getRequestDispatcher("shouye.jsp").forward(request, response);
		}else {
			response.sendRedirect("error.jsp");
		}
	}
}
