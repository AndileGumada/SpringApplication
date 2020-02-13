<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo List</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
     <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/navBar.jsp"/>
<br>
<div class="table-responsive-md" align="center">
<form style="width: 500px; margin: auto">
<table class="table table-bordered table-hover table-sm">
<caption>List of Todo items</caption>
    <thead class="thead-white">
    <tr>
        <th scope="col"><label>Title</label></td>
        <th scope="col"><label>Completed</label></td>
        <th scope="col"><label>Action</label></td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="todo" items="${todos}">
    <tr>
        <td>
            ${todo.title}
        </td>
        <td>
            ${todo.completed}
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
            &nbsp;
            <a href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
            &nbsp;
            <a href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>
        </td>
    </tr>
    </c:forEach>
</table>
</form>
</div>
</body>
</html>
