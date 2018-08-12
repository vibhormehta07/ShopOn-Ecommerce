<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<body background="images/backg-2.jpg">
<%@ include file="Header.jsp" %>

<div class="container">
<table class="table">

<tr>
    <td rowspan="9">
            <img src="<c:url value="/images/${product.productId}.jpg"/>" width="500" height="500">
     </td>
 </tr>
 
 <tr>
    <td>Product ID</td>
    <td>${product.productId}</td>
 </tr>
 
 <tr>
    <td>Product Name</td>
    <td>${product.productName}</td>
 </tr>
 
 <tr>
    <td>Product Description</td>
    <td>${product.productDesc}</td>
 </tr>
 
 
 
 <tr>
    <td>Price</td>
    <td>${product.price}</td>
 </tr>
 
 <tr>
    <td>Stock</td>
    <td>${product.stock}</td>
 </tr>
 
 <tr>
    <td>Supplier ID</td>
    <td>${product.supplierId}</td>
 </tr>
 
 <tr>
    <td>Category</td>
    <td>${categoryName}</td>
 </tr>
 
 <form action="<c:url value= "/AddToCart/${product.productId}"/>" method="get">
 <tr>
    <td>Quantity</td>
    <td>
    <select name="quantity" class="form-control btn-block">//combo box
       <option value="1">1</option>
       <option value="2">2</option>
       <option value="3">3</option>
       <option value="4">4</option>
       <option value="5">5</option>
    </select>
    </td>
  </tr>
  <tr>
     <td colspan="2">
        <input type="submit"  value="AddToCart" class="btn btn-info btn-block"/>
     </td>
   </tr>
  </form>
  </table>
  </div>
  <%@ include file="Footer.jsp" %>
</body>
</html>
 