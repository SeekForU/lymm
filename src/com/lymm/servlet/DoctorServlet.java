package com.lymm.servlet;

import com.lymm.dao.DoctorDAO;
import com.lymm.domian.Doctor;
import com.lymm.impl.DoctorDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

/**
 * Created by ${Seek} on 2017/3/28
 */
@WebServlet("/doctorServlet")
public class DoctorServlet extends HttpServlet {

	DoctorDAO doctorDAO = new DoctorDAOImpl();

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
	 * 信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void info(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idStr = request.getParameter("id");
		int id = -1;
		try {
			id = Integer.parseInt(idStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		//List<Doctor> doctorList = doctorDAO.getDoctorById(id);
		//request.setAttribute("doctorList", doctorList);
		request.getRequestDispatcher("introduction.jsp").forward(request, response);
	}


	/**
	 * 展示医生List
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void doctorShow(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Doctor> doctorList = doctorDAO.getAllDoctors();
		request.setAttribute("doctorList", doctorList);
		//版本1
		//request.getRequestDispatcher("doctors.jsp").forward(request, response);

		//版本2
		request.getRequestDispatcher("pages/doctor.jsp").forward(request, response);
	}
	/**
	 * 预约
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	protected void order(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {


		request.setCharacterEncoding("UTF-8");

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String idStr = request.getParameter("id");
		int id = -1;
		try {
			id = Integer.parseInt(idStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		//List<Doctor> doctorList = doctorDAO.getDoctorById(id);
		Doctor doctor = doctorDAO.getDoctorById(id);
		System.out.println(doctor);
		if (doctor != null) {
			request.setAttribute("list", doctor);
			//版本1
			//request.getRequestDispatcher("order.jsp").forward(request, response);
			//版本2
			request.getRequestDispatcher("pages/order.jsp").forward(request, response);
		}else {
			response.sendRedirect("error.jsp");
		}
		//request.getRequestDispatcher("test.jsp").forward(request, response);
	}
}
