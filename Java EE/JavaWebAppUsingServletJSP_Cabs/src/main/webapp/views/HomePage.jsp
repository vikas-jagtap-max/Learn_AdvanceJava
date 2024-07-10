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
<style>
.fontclass {
	font-family: serif;
	font-weight: bold;
	font-size: xx-large;
}

body {
	background-image: url('../resources/image/background.jpg');
	background-repeat: no-repeat;
	background-position: center;
	background-size: 120%;
	background-height: 120%
}
</style>

<title>User Home</title>
</head>
<body>
	<div class="container-fluid">
		<%-- include header --%>
		<div class="row" style="margin-top: 50px">
			<div
				class="col-md-4 col-md-offset-4 col-sm-4 col-md-offset-2 form-cust"
				style="background-color: rgb(199, 200, 201);">
				<h3 class="fontclass">Just a click to Book a Ride!</h3>
				<form class="form-horizontal" action="makeBooking">
					<div class="form-group required" style="margin-top: 20px">

						<label for="from" class="control-label col-md-4">From</label>
						<div class="col-md-8">
							<input type="text" name="fromlocation" id="fromlocation"
								placeholder="Enter the Source" class="form-control" required
								value="${fromlocation}">
						</div>
					</div>
					<div class="form-group required">

						<label for="to" class="control-label col-md-4"> To </label>
						<div class="col-md-8">
							<input type="text" class="form-control" name="tolocation"
								id="tolocation" placeholder="Enter Destination" required
								value="${tolocation}">

						</div>

					</div>
					<div class="form-group col-md-10">
						<div class="col-md-offset-5 col-md-6">

							<button type="submit" class="btn-link" name="reference" value="0">Estimated
								Fare</button>
						</div>
					</div>
					<div class=" col-md-offset-4 col-md-8 "
						style="font-family: Tw cen MT; font-size: large">${Message}
						${fare}</div>
					<div class="form-group col-md-11">
						<div class="col-md-offset-5">
							<button type="submit" class="btn-primary btn btn-block"
								name="reference" value="1">Book</button>
						</div>

					</div>
					<div class="col-md-8 col-md-offset-4 text-primary"
						style="font-family: Tw cen MT; font-size: large;">
						${Success_Msg} ${bookingId}</div>

				</form>
			</div>
		</div>
	</div>
</body>
</html>