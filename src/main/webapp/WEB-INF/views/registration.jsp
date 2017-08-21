<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
 <form:form action="saveUser" method="POST" modelAttribute="users">
    <nav class="navbar navbar-inverse">
       <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="#"> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Sport Items<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li role="presentation"><a href="cricket">Cricket </a></li>
                            <li role="presentation"><a href="football">Foot ball </a></li>
                            <li role="presentation"><a href="batminton">Batminton </a></li>
                        </ul>
                    </li>
                    <li class="active" role="presentation"><a href="#"><strong>Home</strong> </a></li>
                     <sec:authorize access="!isAuthenticated()">
                            <li><a href="register">Register</a></li>
                      </sec:authorize>
                       
                   <li><a href="cart">Cart</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="row register-form">
        <div class="col-md-8 col-md-offset-2">
            <form class="form-horizontal custom-form">
                <h1>Register Form</h1>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <form:label path="name" class="control-label" for="name-input-field">Name </form:label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <form:input path="name" class="form-control" type="text"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <form:label  class="control-label" path="email-input-field">Email </form:label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <form:input  class="form-control"path="email" type="email"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <form:label path="password" class="control-label" path="pawssword-input-field">Password </form:label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <form:input class="form-control" path="password" type="password"/>
                    </div>
                </div>
               <%-- <div class="checkbox">
                    <form:label>
                        <form:input type="checkbox"/>I've read and accept the terms and conditions</form:label>
                </div> --%>
                <button class="btn btn-default submit-button" type="button">Submit </button>
            </form>
        </div>
    </div>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    
    </form:form>
</body>

</html>