<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="container mt-3">

		<div class="row">

			<div class="col-md-12">

				<h1 class="text-center mb-3">Welcome to Employee App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Email Id</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${employees }" var="e">
							<tr>
								<th scope="row">Emp${e.id }</th>
								<td>${e.firstName }</td>
								<td>${e.lastName }</td>
								<td class="font-weight-bold">${e.emailId }</td>
								<td>
								<a href="delete/${e.id }"><i class="fas fa-trash text-danger" style="font-size: 30px;"></i></a>
								<a href="update/${e.id }"><i class="fas fa-pen-nib text-primary" style="font-size: 30px;"></i></a>
							
								
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">

					<a href="add-employee" class="btn btn-outline-success">Add
						Employee</a>

				</div>


			</div>


		</div>

	</div>
</body>
</html>
