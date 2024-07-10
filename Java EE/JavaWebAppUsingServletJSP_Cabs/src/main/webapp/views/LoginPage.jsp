<%@ page import="com.model.Login, com.service.LoginService"
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	String mobileNumber = request.getParameter("mobileNumber");
	String password = request.getParameter("password");
	Login login = new Login();
	login.setMobileNumber(mobileNumber);
	login.setPassword(password);
	LoginService service = new LoginService();
	//System.out.println(login.getMobileNumber());
	String userName = service.authenticate(login);
	session.setAttribute("name", userName);
	// Session attributes can be used to share data across pages w.r.t user
	//Session is used to maintain state of the user
	if (userName != null) {
	%>
	<%-- <p style='color:blue'>Hello ${sessionScope.name}</p>// Session attributes can be shared across pages w.r.t user --%>
	<%@include file="Header.jsp"%>

	<%@include file="HomePage.jsp"%>
	<%
	} else {
	%><%@include file="Error.jsp"%>
	<%
	}
	%>

</body>
</html>