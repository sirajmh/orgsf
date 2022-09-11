<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>


	<div class="container mt-3">

		<div class="row">

			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Fill the Employee detail</h1>

				<form action="handle-employee" method="post">
					<div class="form-group">
						<label for="firstName">First Name</label> <input type="text"
							class="form-control" id="firstName" aria-describedby="emailHelp"
							name="firstName" placeholder="Enter the first name here">
					</div>


					<div class="form-group">

						<label for="lastName">Last Name</label>
						<input type="text"
							class="form-control" id="lastName" aria-describedby="emailHelp"
							name="lastName" placeholder="Enter the last name here">
					</div>



					<div class="form-group">
						<label for="emailId">Email Id</label> <input type="text"
							placeholder="Enter Email Id" name="emailId"
							class="form-control" id="emailId">
					</div>

					<div class="container text-center">

						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>


						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</form>


			</div>

		</div>

	</div>




</body>
</html>