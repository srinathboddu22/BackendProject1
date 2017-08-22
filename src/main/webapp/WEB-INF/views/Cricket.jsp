<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
    <h1>Cricket </h1>
    <div class="row">
        <div class="col-md-4 col-sm-6">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/batt.jpg"/>">
                <div class="caption">
                    <h3>Kookaburra Cricket Bats</h3>
                    <p>Kookaburra Instinct 800 Cricket Bat </p>
                    <p>RS. 2499/-</p>
                    <p>Off upto 20 %</p>
                    <p class="text-success">Shop Now !</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/helmet.jpg"/>">
                <div class="caption">
                    <h3>Cricket Helmets</h3>
                    <p>SG Optipro Cricket Helmet </p>
                    <p>RS. 1499/-</p>
                    <p>Off upto 15 %</p>
                    <p class="text-success">Shop Now !</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="thumbnail"><img src="<c:url value="/resources/assets/img/pads.jpg"/>">
                <div class="caption">
                    <h3>Cricket Btasmen pads</h3>
                    <p>SG Test RH Batting Legguard </p>
                    <p>RS. 1999/-</p>
                    <p>Off upto 27 %</p>
                    <p class="text-success">Shop Now !</p>
                </div>
            </div>
        </div>
    </div>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>