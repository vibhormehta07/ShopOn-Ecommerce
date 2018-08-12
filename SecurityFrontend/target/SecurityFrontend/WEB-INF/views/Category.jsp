<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<%@ include file ="Header.jsp"  %>
<title>Category</title>
<meta charset="utf-8">


 <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 
</head>
<body background="images/backg-2.jpg" >
<c:choose>  
  <c:when test="${flag}">
<form action="<c:url value='/updateCategory/${categoryData.categoryId}'/>" method="post">

<tr bgcolor="sky blue">
  <td colspan="2"><center> Update Category</center></td>
</tr> 
 
      <tr>
         <td>Category Id</td>
       <td><input type="number" name="categoryId" value="${categoryData.categoryId}" readonly></td>
</tr>
     <tr>
         <td>Category Name</td>
       <td><input type="text" name="catname" value="${categoryData.categoryName}" ></td>
</tr>
     <tr>
         <td>Category Description</td>
       <td><input type="text" name="catDesc" value="${categoryData.categoryDesc}" ></td>
</tr>
<tr>
<td colspan="2"><center><input type="submit" name="Update" value="Update"></center></td>
</tr>
</table>
</form>
 </c:when>
 
 <c:otherwise>
 
  <form action="<c:url value='/InsertCategory'/>" method="POST">
<table align="center" cellspacing="3" class="table">

<tr bgcolor="sky blue">
  <td colspan="2"><center> Manage Category</center></td>
</tr> 


     <tr>
         <td>Category Name</td>
       <td><input type="text" name="catname"></td>
</tr>

     <tr>
         <td>Category Description</td>
       <td><input type="text" name="catDesc"></td>
</tr>
<tr>
<td colspan="2">
        <center>
<input type="submit"  value="SUBMIT" class="btn btn-info"/>
       </center>
</td>
</tr>
</table>
</form>
  
 <div class="container">
 <h2 style="color: #448aff;text-align: center;"> Category Table </h2>

 <hr>
  <table class="table table-striped">
    <div class="dropdown">
      
     <!--  <a class="btn-top" style="margin-right: 15px;" href="#" class="btn btn-primary btn-success pull-right"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit All</a> -->
      <a class="btn-top" style="margin-right: 15px;" href="#" class="btn btn-primary btn-success pull-right"> <span class="glyphicon glyphicon-plus"></span> &nbsp Add Table</a>
  </div>
</div>

<thead>
        <tr class="row-name">
           <th style="width:12%">Check/UnCheck</th>
           <th> Category Id</th>
           <th> Category Name</th>
           <th> Category Desc</th>
           <th> Delete|Edit </th>
           
          
        </tr>
     </thead>   
     <tbody>
     
     <tr class="row-content">
        <c:forEach items="${categorylist}" var="category">
          <th class="check" "> <label><input type="checkbox" value=""></label></th>  
              <th>${category.categoryId}</th>
             <th>${category.categoryName}</th>
             <th>${category.categoryDesc}</th>
             
          
          
<%-- <div class="container">
<table align="center" cellspacing="3" class="table">
         <tr bgcolor="grey">
          <td>Category ID</td> 
           <td> Category Name</td> 
            <td>Category Desc</td> 
             <td>Operation</td>
         </tr>
         <c:forEach items="${categorylist}" var="category">
         <tr>
             <td>${category.categoryId}</td>
             <td>${category.categoryName}</td>
             <td>${category.categoryDesc}</td>
              --%>
             <td>
              <a class="btn btn-danger edit" href="<c:url value='/deleteCategory/${category.categoryId}'/>" aria-label="Settings">
                <i class="fa fa-trash" aria-hidden="true"></i>
              </a>
              &nbsp 
              <!-- <a class="btn btn-info edit" href="path/to/settings" aria-label="Settings">
                <i class="fa fa-pencil-square-o" aria-hidden="true"></i> -->
    <a class="btn btn-info edit" href="<c:url value='/editCategory/${category.categoryId}'/>" aria-label="Settings">
                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
              </a>         
  
              

           </td>
        </tr>
       </tbody>
      </c:forEach>
  </table>
 </div>

</c:otherwise>
</c:choose>  
</body>
</html>