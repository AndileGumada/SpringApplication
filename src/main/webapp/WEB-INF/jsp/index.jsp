<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Todo List</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">

</head>
<body>
	<jsp:include page="/WEB-INF/jsp/navBar.jsp" />
	<div class="container">
		<div class="card">
			<h5 class="card-header">List of To Do items</h5>
			<div class="table-responsive-md" align="center">

				<table class="table table-bordered table-hover table-sm"
					class="table">

					<thead class="thead-white">
						<tr>
							<th scope="col"><label>Title</label></th>
							<th scope="col"><label>Completed</label></th>
							<th scope="col"><label>Description</label></th>
							<th scope="col"><label>Action</label></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="todo" items="${todos}">
							<tr>
								<td>${todo.title}</td>
								<td>${todo.completed}</td>

								<td>${todo.description}</td>
								<td>

									<div class="btn-group" role="group" aria-label="Basic example">

										<a
											href="${pageContext.request.contextPath}/todo/edit/${todo.id}"
											class="btn btn-info btn-lg"> <i class="fas fa-edit"></i>

										</a>

									</div>

									<div class="btn-group" role="group" aria-label="Basic example">
										<a
											href="${pageContext.request.contextPath}/todo/delete/${todo.id}"
											class="btn btn-info btn-lg"><i class="fas fa-trash-alt"></i>

										</a>


									</div>
									<div class="btn-group" role="group" aria-label="Basic example">


										<a
											href="${pageContext.request.contextPath}/todo/complete/${todo.id}"
											class="btn btn-info btn-lg"> <i class="fa fa-check"></i>
										</a>

									</div>


								</td>
							</tr>
						</c:forEach>
				</table>

			</div>

		</div>
	</div>
</body>

<%@ include file="footer.jsp"%>

</html>
