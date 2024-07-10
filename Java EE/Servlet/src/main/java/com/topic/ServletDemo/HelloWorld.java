package com.topic.ServletDemo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/message")
public class HelloWorld extends HttpServlet {

	public void init() {

	}

	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
		System.out.println("Servlet Application is running inside Apache Tomcat Server");

		PrintWriter out = res.getWriter();
		out.println("Response of browser request from server to browser");

	}

	public void destroy() {

	}
}
