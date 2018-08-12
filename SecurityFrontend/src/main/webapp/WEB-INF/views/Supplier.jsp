<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file ="Header.jsp"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <html>
<head>
<title>Supplier</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body background="images/backg-2.jpg">



<tr bgcolor="sky blue">
<c:choose>  
<c:when test="${flag}">
<form action="<c:url value='/updateSupplier/${supplierData.supplierId}'/>" method="post">
<table>
     <tr>
         <td>Supplier Id</td>
       <td><input type="number" name="supid" value="${supplierData.supplierId}" readonly></td>
</tr>
     <tr>
         <td>Supplier Name</td>
       <td><input type="text" name="supname" value="${supplierData.supplierName}" ></td>
</tr>
     <tr>
         <td>Supplier Address</td>
       <td><input type="text" name="supAddr" value="${supplierData.supplierAddr}" ></td>
</tr>
<tr>
<td colspan="2"><center><input type="submit" name="Update" value="Update"></center></td>
</tr>
</table>


</form> 

</c:when>

<c:otherwise>

<form action="<c:url value='/InsertSupplier'/>" method="post">
<table align="center" cellspacing="3" class="table">
  <td colspan="2"><center> Manage Supplier</center></td>
</tr> 

     <tr>
         <td>Supplier Name</td>
       <td><input type="text" name="supName"></td>
</tr>

     <tr>
         <td>Supplier Address</td>
       <td><input type="text" name="supAddr"></td>
</tr>
<tr>

<td colspan="2"><center><input type="submit" name="Add" value="ADD"></center></td>



</tr>
</table>
</form>





<table align:"center" class="table-bordered">
         <tr bgcolor="yellow">
          <td>Supplier Id</td>
           <td> Name</td>
             <td> Address</td>
              <td>Operations</td>

</tr>
<c:forEach items="${supplierlist}" var="supplier">
<tr>
    <td>${supplier.supplierId}</td>
    <td>${supplier.supplierName}</td>
    <td>${supplier.supplierAddr}</td>
   

<td>
         <a href ="<c:url value='/deleteSupplier/${supplier.supplierId}'/>"><button class="btn btn-danger" style="font-size:20px"><i class="fa fa-trash-o" style="font-size: 36px"></i></button></a>
          <a href ="<c:url value='/editSupplier/${supplier.supplierId}'/>"><button class="btn btn-warning" style="font-size:20px"><i class="fa fa-edit" style="font-size: 36px"></i> </button></a>
</td>
</tr>
</c:forEach>
</table>

</c:otherwise>
</c:choose>
<%@ include file="Footer.jsp" %>  
</body>
</html>