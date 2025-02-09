package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.model.Login;
import com.service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mobileNumber = request.getParameter("mobileNumber");
		String password = request.getParameter("password");
		Login login = new Login();
		login.setMobileNumber(mobileNumber);
		login.setPassword(password);
		LoginService service = new LoginService();
		String userName = service.authenticate(login);
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(); // ServletAPI provides session management through HttpSession.
													// session is HttpSession object which hold data of user that can be
													// used/retained for future uses.
		session.setAttribute("name", userName);

		if (userName != null) {

			request.getRequestDispatcher("views/HomePage.jsp").include(request, response);
		} else {
			request.getRequestDispatcher("views/Error.jsp").include(request, response);

		}

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
}
