<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/register.css"/>">
     <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    
   
    
</head>

<body class="register-body">
    <h1 class="register-heading">Register Here</h1>
    <form:form method="POST" action="saveUser" modelAttribute="users">
        <div class="well">
            <div class="row register-row">
                <div class="col-md-offset-3 col-sm-2 col-sm-offset-3 col-xs-12">
                    <form:label path="name" class="login-para" >Name </form:label>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <form:input  path="name" class="form-control input-sm" type="text" required="" autofocus="" />
                </div>
            </div>
            <div class="row register-row">
                <div class="col-md-offset-3 col-sm-2 col-sm-offset-3 col-xs-12">
                    <form:label path="email" class="text-right login-para">Email </form:label>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <form:input path="email" class="form-control input-sm" type="email" required="" autofocus="" />
                </div>
            </div>
            <div class="row register-row">
                <div class="col-md-offset-3 col-sm-2 col-sm-offset-3 col-xs-12">
                    <form:label path="password" class="text-right login-para">Password </form:label>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <form:input  path="password" class="form-control input-sm" type="password" required="" autofocus="" />
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-offset-4 col-sm-3 col-sm-offset-4 col-xs-6">
                    <button class="btn btn-primary btn-block btn-sm" type="submit" >Submit </button>
                </div>
            </div>
        </div>
    </form:form>
    
</body>

</html>