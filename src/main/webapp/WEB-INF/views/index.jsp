<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">



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
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="#"> YesDeal  Sports Hub </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active" role="presentation"><a href="#">Home </a></li>
                   <sec:authorize access="!isAuthenticated()">
                            <li><a href="login">Login</a></li>
                            <li><a href="register">Register</a></li>
                      </sec:authorize>
                       <sec:authorize access="isAuthenticated()">
                              <li> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                               <li><a href="cart">Cart</a></li>
                   </sec:authorize>
                    
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Categories <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                           <c:forEach items="${categoryList}" var="category">
                            <li role="presentation"><a href="product${category.categoryId}">${category.categoryName}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="carousel slide" data-ride="carousel" id="carousel-1">
        <div class="carousel-inner" role="listbox">
            <div class="item active"><img class="img-rounded" src="<c:url value="/resources/assets/img/worldcup.jpg"/>" alt="Slide Image" width="80%" height="70%"></div>
            <div class="item"><img src="<c:url value="/resources/assets/img/batminton.jpg"/>" alt="Slide Image" width="80%" height="70%"></div>
            <div class="item"><img class="img-rounded" src="<c:url value="/resources/assets/img/Hd Soccer Wallpapers 1080p  Free Download Wallpaper  DaWallpaperz.jpg"/>" alt="Slide Image" width="80%" height="70%"></div>
        </div>
        <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a>
            <a class="right carousel-control" href="#carousel-1" role="button" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a>
        </div>
        <ol class="carousel-indicators">
            <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-1" data-slide-to="1"></li>
            <li data-target="#carousel-1" data-slide-to="2"></li>
        </ol>
   
     </div>
     
        <h2 class="text-center text-success"> Buy Sport kits Online</h2>
        <p class="text-center text-primary"> Don't wait for the perfect moment</p>
        <p class="text-center text-primary">Take a moment and make it perfect!!</p>
        <p></p>
      
		
        <div class="row">
        <c:forEach items="${HomeList}" var="product">
            <div class="col-md-4 col-sm-6">
                <div class="thumbnail">
				<img width="150px" height="150px" class="img-responsive" style="padding-top: 5px" src="/BackendProject1/myImage/imageDisplay?id=${product.productid}" />
				
				 <div class="caption">
                        <h3>${product.productName }</h3>
                        <p>${product.productDescription }</p>
                        <li>Price: Rs.<Strong>${product.price}</Strong></li>
                        <p></p>
                        <li>
                                <form:form action="addToCart/${product.productid}" method="POST">
                                <input type="submit" value="Add to Cart" class="btn btn-primary">
                                </form:form>
                                </li>
                    </div>
                </div>
          
                </div>
                </c:forEach>
            </div>
           
          
        </div>
     
    </div>
     <footer>
        <div class="row">
            <div class="col-md-4 col-sm-6 footer-navigation">
                <h3><a href="#">Yes<span>deal </span></a></h3>
                <p class="links"><a href="#">Home</a><strong> </strong>
                    <a href="#"> </a><strong>  </strong><a href="#">About</a><strong>  </strong><a href="#">Contact</a></p>
                <p class="company-name">Sports Hub© 2015 </p>
            </div>
            <div class="col-md-4 col-sm-6 footer-contacts">
                <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                    <p><span class="new-line-span">Gachibowli </span> Hyderabad</p>
                </div>
                <div><i class="fa fa-phone footer-contacts-icon"></i>
                    <p class="footer-center-info email text-left"> +91 8686834383</p>
                </div>
                <div><i class="fa fa-envelope footer-contacts-icon"></i>
                    <p> <a href="#" target="_blank">srinath22@gmail.com</a></p>
                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 footer-about">
                <h4>About the company</h4>
                <p> The Dare Devils Sports Hub is a world-class integrated sports hub delivering world-class sporting items. All the genuine Sport items are available. </p>
                <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
            </div>
        </div>
    </footer>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>