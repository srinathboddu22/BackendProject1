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
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Header.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Footer.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Google-Style-Login.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/Bootstrap-Payment-Form.css"/>">
</head>

<body>
    
    <form:form action="supplier.do" method="POST" modelAttribute="supplier" commandName="supplier">
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
                </div>
            </div>
        </nav>
        <h1>Welcome !! <small class="text-success">Enter the Supplier Details</small></h1></div>
        
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <form:label path="supplierid">Supplier Id </form:label>
                </div>
                <div class="col-md-4 col-sm-6">
                    <form:input class="form-control input-sm" path="supplierid" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <form:label path="supplierName">Supplier Name </form:label>
                </div>
                <div class="col-md-4 col-sm-6">
                    <form:input class="form-control" path="supplierName" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
         
            <div class="row">
                <div class="col-md-1 col-sm-6">
                    <input type="submit" name="action" value="Add" />
                </div>
                <div class="col-md-1 col-sm-6">
                    <input type="submit" name="action" value="Edit" />
                </div>
                <div class="col-md-1 col-sm-6">
                    <input type="submit" name="action" value="Delete" />
                </div>
                <div class="col-md-1 col-sm-6">
                    <input type="submit" name="action" value="Search" />
                </div>
            </div>
        </div>
    </div>
    
    </form:form>
<br>
<table border="1">
	<th>ID</th>
	<th>Supplier name</th>
		
	<c:forEach items="${supplierList}" var="supplier">
		<tr>
			<td>${supplier.supplierid}</td>
			<td>${supplier.supplierName}</td>
			
			
		</tr>
	</c:forEach>
</table>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>