<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sports</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Footer.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Google-Style-Login.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/untitled.css"/>">
</head>

<body>
    
    <div class="page-header">
    
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand navbar-link" href="#"> </a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav">
                        <li role="presentation"><a href="#">Category </a></li>
                        <li role="presentation"><a href="#">Product </a></li>
                        <li class="active" role="presentation"><a href="#">Supplier </a></li>
                    </ul>
                    
             <sec:authorize access="isAuthenticated()">
         
            
            <li class="nav-item">
              <a class="nav-link " href="<c:url value="j_spring_security_logout" />">Logout</a>
            </li>
            </sec:authorize>
            <li class="nav-item">
            </li>
                </div>
            </div>
        </nav>
    <form:form action="supplier.do" method="POST" modelAttribute="supplier" commandName="supplier">
        <div class="container">
        <div class="page-header">
            <h1> Enter the Supplier Details<small class="text-danger"></small></h1></div>
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <form:label path="supplierid">Supplier Id </form:label>
                </div>
                <div class="col-md-4 col-sm-6">
                    <form:input path="supplierid" class="form-control" type="tel"/>
                </div>
            </div>
       <br> 
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <form:label path="supplierName">Supplier Name </form:label>
                </div>
                <div class="col-md-4 col-sm-6">
                    <form:input path="supplierName" class="form-control" type="text"/>
                </div>
            
        </div>
      <br>
         <div class="row">
               
	<div class="col-md-offset-2 col-sm-8 col-xs-6">
	
                <input class="btn btn-lg btn-primary" type="submit" name="action" value="Add" />
				<input class="btn btn-lg btn-primary"  type="submit" name="action" value="Edit" />
				<input class="btn btn-lg btn-primary"  type="submit" name="action" value="Delete" />
				<input class="btn btn-lg btn-primary"  type="submit" name="action" value="Search" />
                </div>
               
        
            </div> 
        </div>
    </form:form>
 <br>
            
            <div class="container">
        <div class="well">  
<table class="table table-hover">
<thead>
<tr>
	<th>ID</th>
	<th>Supplier name</th>
</tr>
</thead>
<tbody>	
	<c:forEach items="${supplierList}" var="supplier">
		<tr>
			<td>${supplier.supplierid}</td>
			<td>${supplier.supplierName}</td>
			
			
		</tr>
	</c:forEach>
	</tbody>
</table>
           
        </div>
    </div>
    
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>