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

    <div class="row register-form">
        <div class="col-md-8 col-md-offset-2">
       
            <form:form  method="POST"  class="form-horizontal custom-form" action="saveUser" modelAttribute="users">
            
                <h1>Register Form</h1>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <form:label path="name" class="control-label" >Name </form:label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <form:input path="name" class="form-control" type="text"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <form:label class="control-label" path="email" for="email-input-field">Email </form:label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <form:input path="email" class="form-control" type="email" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <form:label class="control-label" path="password" for="pawssword-input-field">Password </form:label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <form:input path="password" class="form-control" type="password"/>
                    </div>
                </div>
                
                <div class="checkbox">
                    <label>
                        <input type="checkbox">I've read and accept the terms and conditions</label>
                </div>
                <button class="btn btn-default submit-button" type="submit">Submit Form</button>
            </form:form>
        </div>
    </div>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>