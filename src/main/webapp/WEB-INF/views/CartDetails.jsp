<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart Details</title>
    <link rel="stylesheet" href="<c:url value="resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/assets/css/category.css"/>">

</head>
<body>
 <div class="container">
        <div class="well">     
<c:forEach items="${cartList}" var="cd">

		<table class ="table table-hover ">
		<thead>
		<tr>
	
	<!-- <th>image</th>
	
	 --><th>Product name</th>
	<th>product price</th>
	<th>Quantity</th>
	<th>updated Quantity</th>
	<th>SubTotal</th>
	<th>Options</th>
	
	
</tr>
</thead>	
<tbody>	

<form:form action="cart.do/${cd.id}" method="POST">
		<tr>
			<%-- <td>${cd.id}</td>
			 --%><td>${cd.productname}</td>

			<td>${cd.productprice}</td>
			<td>
			<input  class="form-control" type="text" name="quantity" value="1"></input>
                 </td>
                 <td>${cd.quantity}</td>
			<td>${cd.subTotal}</td>
			<td>
			<input class="btn-block" type="submit" name="action" value="Edit" />
				<input class="btn-block" type="submit" name="action" value="Delete" />
				</td>
				
			
			 <td><div class="thumbnail">
			<img height="200px" width="200px" atl="${product.productid}"
			src="<c:url value="/resources/images/${product.productid}.jpg"></c:url>">
			</div></td> 
			
			
		</tr>
		</form:form>
	
	</tbody>	
	
</table>
<a href="index" class="btn btn-danger" role="button">Continue Shopping</a>
<a href="${cd.userid}" class="btn btn-success" role="button">CheckOut</a>
</c:forEach>
</div>
</div>

<script src="<c:url value="resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
 
 
</body>
</html>