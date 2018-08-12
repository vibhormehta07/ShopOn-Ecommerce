 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>>
     <body background="images/backg-2.jpg" width=100% height=100%>    
 <%@include file="Header.jsp" %> 
 <form:form action="ProductInsert" modelAttribute="product" method="post" enctype="multipart/form-data">
 
 <table align="center" cellspacing="3" class="table">
 
 <tr bgcolor="yellow">
     <td colspan="2"><center>Product Manage</center></td>
 </tr>
 <tr>
 	<td>Product Id</td>
 	<td> <form:input path="productId" hidden="true"/>
 <tr>
 <tr>
     <td>Product Name</td>
     <td> <form:input path="productName" /></td>
 </tr>
 
 <tr>
     <td>Product Description</td>
     <td> <form:input path="productDesc"/></td>
 </tr>
 
 <tr>
     <td>Price</td>
     <td> <form:input path="price"/></td>
 </tr>
 
 <tr>
     <td>Stock</td>
     <td> <form:input path="stock"/></td>
 </tr>
 
 <tr>
     <td>Category</td>
     <td>
         <form:select path="categoryId">
         <form:option value="0" label="--Select list--"/>
         <form:options items="${categoryList}"/>
         </form:select>
      </td>   
 </tr>
 
  <tr>
     <td>Supplier</td>
     <td> <form:input path="supplierId"/></td>
 </tr>
 
  <tr>
     <td>Product Image</td>
     <td> <form:input type="file" path="pimage"/></td>
 </tr>
 
 <tr>
     <td colspan="2">
           <center><input type="submit" value="Save" class="btn btn-info"/></center>
     </td>
  </tr>
</table>
</form:form>

<table align:"center" class="table-bordered">
         <tr bgcolor="yellow">
          <td>Product ID</td> 
           <td>Product Name</td> 
            <td>Product Desc</td> 
             <td>Price</td> 
              <td>Stock</td> 
               <td>Category</td> 
                <td>Supplier</td> 
                 <td>Operation</td>
         </tr>
         <c:forEach items="${productList}" var="product">
         <tr>
             <td>${product.productId}</td>
             <td>${product.productName}</td>
             <td>${product.productDesc}</td>
             <td>${product.price}</td>
             <td>${product.stock}</td>
             <td>${product.categoryId}</td>
             <td>${product.supplierId}</td>
             <td>
                <a href="<c:url value='/deleteProduct/${product.productId}'/>">Delete</a>
                <a href="<c:url value='/updateProduct/${product.productId}'/>">Edit</a>
             </td>
         </tr>
       </c:forEach>
      </table>
<%@ include file="Footer.jsp" %>
</body>
</html>
  
   
 <%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<c:url var="addAction"  value="/ProductInsert"></c:url>
	<c:if test="${not empty msg}">



		<div class="row">
			<div class="col-xs-12 col-md-offset-2 col-md-8">
				<div class="alert alert-info fade in">${msg}</div>
			</div>
		</div>
	</c:if>
	<form:form action="${addAction}" enctype="multipart/form-data" commandName="product"  role="form">

		<table class="table table-condensed">
<tr>	
		<td><form:label path="productId">	<spring:message text="Product Id" /></form:label></td> 
			<c:choose>
				<c:when test="${!empty product.pid}">

					<td><form:input path="productId" disabled="true" readonly="true" /></td>
				</c:when>
				<c:otherwise>
					<td><form:input path="productId" required="true" disabled="true" /></td>
				</c:otherwise>
			</c:choose>
			</tr>
			<tr>
				<form:input path="pid" hidden="true" />




				
		<td>	<form:label path="pid"><spring:message text="Product Id" /> </form:label></td>
		<td>	<form:input id="product_id" path="pid" type="text" hidden="true" disabled ="true" /></td>


			</tr>
			<tr>
				<td><form:label path="productName">
						<spring:message text="ProductName" />
					</form:label></td>
				<td><form:input id="product_name" path="pname" type="text"
						placeholder="Product Name" required="true" /></td>
			</tr>
			<tr>



				<td><form:label path="productDesc">
						<spring:message text="Product Description" />
					</form:label></td>
				<td><form:input path="productDesc"
						placeholder="Product Description" required="true" type="text" /></td>
			</tr>

			<tr>
				<td><form:label path="price">
						<spring:message text="Product Price" />
					</form:label></td>

				<td><form:input id="product_price" path="price"
						placeholder="Product Price" required="true" type="text" /></td>
			</tr>


			<tr>

				<td><form:label path="stock">
						<spring:message text=" Product Quantity" />
					</form:label></td>

				<td><form:input id="product_stock" path="stock"
						placeholder="Product Stock" required="true" type="text" /></td>
			</tr>

			<tr>
				<td><form:label path="categoryId">
						<spring:message text="Produt Category" />
					</form:label></td>
				<td><form:select path="categoryId">
						<c:forEach var="category" items="${categoryList}">
							<option>${category.categoryName}</option>
						</c:forEach>
					</form:select></td>
			</tr>

			<tr>
				<td><form:label path="supplierId">
						<spring:message text="Product 	Supplier" />
					</form:label></td>

				<td><form:select class="form-control" path="supplierId">
						<c:forEach var="supplier" items="${supplierList}">
							<option>${supplier.supplierName}</option>
						</c:forEach>
					</form:select></td>
			</tr>






			<tr>
				<td><from:label>
						<spring:message text="Product image" />
					</from:label></td>

				<td><input id="file" name="file" class="input-file" type="file"></td>
			<tr>
				<td><input type="submit" path="submit" class="btn btn-primary"
					value="<spring:message text="Submit"/>" /></td>



				<td><input type="submit" path="cancel" class="btn btn-warning"
					value="<spring:message text="Cancel"/>" /></td>
			</tr>

		</table>
	</form:form>




</body>

</html>   --%>