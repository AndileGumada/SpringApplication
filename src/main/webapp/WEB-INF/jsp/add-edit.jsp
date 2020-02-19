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
<div class="container">
<div class="card w-55">

    <h5 class="card-header info-color white-text bg-primary text-center py-4">
        <strong>${modeTitle} Todo</strong>
    </h5>

    <!--Card content-->
    <div class="card-body px-lg-5"	>

<form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo" style="width: 500px; margin: auto">
   
    <form:hidden path="id"/>
    
 <div class="form-group offset-1 col-40">
        <form:label path="title"></form:label>
   <div class="row justify-content-start">
   		<input type="text" class="form-control" placeholder="Title">
    </div>
    <div class="row justify-content-end" >
           <form:errors class="alert alert-danger" role="alert" path="title"></form:errors>
    
    </div>
</div>
  
<div class="form-group offset-1 col-15	">
     <form:label path="description"></form:label>
    
   <div class="row justify-content-start">
        <form:textarea path="description" class="form-control" cols="40" rows="15" placeholder="Description"></form:textarea>
    
   </div>
 	<div class="row justify-content-end">
     <form:errors class="alert alert-danger" role="alert" path="description"></form:errors>
 
 	</div>
</div>
 <div class="row offset-1 col-6">

 <input class="btn btn-primary" type="submit" name="submit" value="Submit">
 <form:button class="btn btn-primary" name="cancel">Cancel</form:button>
 </div>

</form:form>
</div>
</div>
</div>
</body>
</html>
