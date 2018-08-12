<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>ShopOn</title>
</head>
<body background="images/backg-2.jpg">

<div class="jumbotron">
  <div class="container text-center">
    <h1>Shop on Online Store</h1>      
    <p>Welcome to the world technology!!</p>
  </div>
</div>
<%@ include file="Header.jsp" %>
<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Shopon</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="home">Home</a></li>
	  <li><a href="login">Login</a></li>
	  <li><a href="register">Register</a></li>
      <li><a href="contactus">Contact Us</a></li>
	  <li><a href="aboutus">About Us</a></li>
	  <li><a href="category">Manage Category</a></li>
	  <li><a href="product">Manage Product</a></li>
	  <li><a href="productDisplay">Display Product</a></li>
	  <li><a href="supplier">Supplier</a></li>
	  <li><a href="cart">Cart</a></li>
    </ul>
    <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
  </div>
</nav> -->

<%-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Shopon</a>
    </div>
<ul class="nav navbar-inverse">
      <li class="active"><a href="home">Home</a></li>
      <li > <a  href="aboutus">About Us</a> </li>
       <li><a href="contactus">Contact Us</a></li>
      <security:authorize access="hasRole('ADMIN')">
        <li><a href="${contextRoot}/admin">Manage Category </a></li>
        <li><a href="${contextRoot}/admin">Manage Supplier </a></li>
        <li><a href="${contextRoot}/admin">Manage Product</a></li>
        </security:authorize>
        <security:authorize access="hasRole('USER')">
        <li><a href="${contextRoot}/cart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
          <li><a href="${contextRoot}/productDisplay"> Display Product</a></li>
        </security:authorize>
      </ul>
      <ul class="nav navbar-nav navbar-center">
   <c:if test="${pageContext.request.userPrincipal.name  == null}">
        <li><a href="${contextRoot}/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${contextRoot}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="${contextRoot}/logout"> Logout</a></li> 
 </c:if>  
        <security:authorize access="isAuthenticated()">
   <li>Welcome  <security:authentication property="principal.username" /> </li>
    </security:authorize>
         <security:authorize access="hasRole('USER')">
          <li><a href="${contextRoot}/logoutSuccess"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li> 
        </security:authorize>
      </ul>
    </div> --%>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Deal of the Day</div>
        <div class="panel-body"><img src="images\SurfacePro.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy a SurfacePro and get 15% OFF on a HDFC card purchase!</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Deal of the week!</div>
        <div class="panel-body"><img src="images\Iphone x.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 5 mobiles and a laptop and get a headphones free!! T&C apply!</div>
      </div>
    </div>




<%@ include file="Footer.jsp" %>
</body>
</html>