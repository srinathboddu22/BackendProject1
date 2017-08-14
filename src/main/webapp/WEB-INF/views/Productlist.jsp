<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

${users.id}

            <table border="1">
	<th>ID</th>
	<th>Product name</th>
	<th>Product desc</th>
	<th>Product price</th>
    <th>Product stock</th>
    <th>Product image</th>
   
	<c:forEach items="${Listpro}" var="product">
		<tr>
			<td>${product.productid}</td>
			<td>${product.productName}</td>
			<td>${product.productDescription}</td>
			<td>${product.price}</td>
			<td>${product.stock}</td>
			<td><div class="thumbnail">
		<img height="100px" width="100px" alt="${product.productid }"
		src="<c:url value="/resources/images/${product.productid}.jpg" /> ">
	</div></td>
			
		</tr>	
		<form action="../addtoCart/${users.id}/${product.productid}">
								<input type="submit" value="Add to Cart"
									class="btn btn-primary">

</form>
	</c:forEach>
		
    </table>
</body>
</html>