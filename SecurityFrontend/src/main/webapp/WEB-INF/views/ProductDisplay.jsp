<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body background="images/backg-2.jpg">
<%@ include file="Header.jsp" %>


<div class="row">
<c:forEach items="${productList}" var="product">
	<div class="col-md-4 col-md-4">
	<div class="thumbnail">
				   
				     
						<img alt="Image not supported" src="<c:url value="images/${product.productId}.jpg "/>"height=300 width="300"/>
						<a href="<c:url value="/totalProductInfo/${product.productId}"/>"class="btn btn-primary col-xs-12"role="button">Click for Large</a>
						<div class="clearfix"></div>
						
		          
	</div>
	</div>
	</c:forEach>
	</div>
<%@ include file="Footer.jsp" %>
</body>
</html>