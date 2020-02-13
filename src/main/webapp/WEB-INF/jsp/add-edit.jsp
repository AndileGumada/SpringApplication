<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${modeTitle} Todo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
     <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/navBar.jsp"/>

<h2>${modeTitle} Todo</h2>
<form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo" style="width: 500px; margin: auto">
    <form:hidden path="id"/>
    <table>
        <tr>
            <td>
                <form:label path="title">Title</form:label>
            </td>
            <td>
                <form:input path="title" class="form-control"></form:input>
            </td>
            <td>
                <form:errors path="title"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description" class="form-control">Description</form:label>
            </td>
            <td>
                <form:textarea path="description" cols="40" rows="25"></form:textarea>
            </td>
            <td>
                <form:errors path="description"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <label>Actions</label>
            </td>
            <td>
                <form:button name="cancel">Cancel</form:button>
                &nbsp;
                <input type="submit" name="submit" value="Submit">
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
