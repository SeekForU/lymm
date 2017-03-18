package com.lymm.servlet;

import com.lymm.domian.User;
import com.lymm.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

/**
 * Created by ${Seek} on 2017/3/16
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {

	private UserService userService = new UserService();
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
		String passwdStr = request.getParameter("textfield2");

		User user = null;

		user = userService.getUser(nameStr);
		System.out.println(nameStr);
		//if (user.getUserName().equals(nameStr) && user.getUserPassword().equals(passwdStr)) {
		if (user.getUserName() == nameStr && user.getUserPassword() == passwdStr) {
			response.sendRedirect(request.getContextPath() + "/error.jsp");

			return;
		}
		request.setAttribute("user", user);
		//request.getRequestDispatcher("html/login.html").forward(request, response);
		request.getRequestDispatcher("shouye.jsp").forward(request,response);
	}
}
