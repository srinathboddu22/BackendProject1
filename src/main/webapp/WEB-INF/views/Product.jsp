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
                        <li class="active" role="presentation"><a href="#">Product </a></li>
                        <li role="presentation"><a href="#">Supplier </a></li>
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
        <form:form method="POST" action="product.do" enctype="multipart/form-data" modelAttribute="product">
         <div class="container">
        <div class="page-header">
            <h1> Enter the Product Details<small class="text-danger"></small></h1></div>
            <div class="well">
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <form:label path="productid">Product Id</form:label>
                    </div>
                    <div class="col-md-4 inputchange">
                       <form:input path="productid" class="form-control" type="tel"/>
                    
            </div>
        </div>
     <br>   
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <form:label path="productName">Product name</form:label>
                    </div>
                    <div class="col-md-4 inputchange">
                         <form:input class="form-control input-sm" path="productName" type="text"/>
                    </div></div>
        <br>        
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <form:label path="productDescription">Description </form:label>
                    </div>
                     <div class="col-md-4 col-sm-6">
                       <form:input class="form-control input-sm" path="productDescription" type="text"/>
                    </div>
                </div><br>
                
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <form:label path="image" >Image </form:label>
                    </div>
               <div class="col-sm-4 col-xs-6">
               <input type="file" name="file" />
          			</div>
                     </div><br>
           
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <form:label path="price">Price </form:label>
                    </div>
                    <div class="col-md-4 inputchange">
                        <form:input path="price" type="tel" class="form-control"/>
                    </div>
                </div>
    <br>        
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <form:label path="stock">Stock </form:label>
                    </div>
                    <div class="col-md-4 inputchange">
                       <form:input path="stock" type="tel" class="form-control"/>
                    </div>
                </div>
            
    <br>        
        
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <form:label path="Catid">Category Id</form:label>
                    </div>
                    <div class="col-md-4 inputchange">
                          <form:select path="Catid" class="form-control">
                          <optgroup label="This is a group">
                                
								<c:forEach items="${categoryList}" var="category">
								
									<form:option class="form-control" value="${category.categoryId}">${category.categoryName}</form:option>
								</c:forEach>
                            </optgroup>
                        </form:select>
                    </div>
      <br>         
           </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <form:label path="Supid">Supplier Id</form:label>
                    </div>
                     <div class="col-md-4 inputchange">
                        <form:select path="Supid" class="form-control">
                            <optgroup label="This is a group">
                               <c:forEach items="${supplierList}" var="supplier">
									<form:option class="form-control" value="${supplier.supplierid}">${supplier.supplierName}</form:option>
								</c:forEach>
                            </optgroup>
                        </form:select>
                    </div>
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
  </div>
        </form:form>
    <br>       
            <div class="container">
        <div class="well">     
		<table class ="table table-hover ">
		<thead>
		<tr>
	<th>ID</th>
	<th>Product name</th>
	<th>Product desc</th>
	<th>Product price</th>
	<th>Product stock</th>
	<th>Image</th>
</tr>
</thead>	
<tbody>	
<c:forEach items="${productList}" var="product">
		<tr>
			<td>${product.productid}</td>
			<td>${product.productName}</td>
			<td>${product.productDescription}</td>
			<td>${product.price}</td>
			<td>${product.stock}</td>
			<td><div class="thumbnail">
				<img width="100px" height="100px" class="img-responsive" style="padding-top: 5px" src="/BackendProject1/myImage/imageDisplay?id=${product.productid}" />
		 </div></td>	
		</tr>
	</c:forEach>
	</tbody>	
</table>
</div>
</div>
</body>
</html>