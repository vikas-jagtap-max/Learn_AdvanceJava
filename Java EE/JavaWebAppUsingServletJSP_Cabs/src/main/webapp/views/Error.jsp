<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<title>Error Page</title>
<style>
body {
	background-image: url('../resources/image/background.jpg');
	background-position: center;
	background-size: 99%;
	background-height: 100%;
}
</style>
</head>
<body>
	<h2 class="text-danger">
		Invalid Credentials! Click the following link to login <a
			href="LoginPage.html" style="weight: Bold">Login</a>
	</h2>
</body>
</html>