<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>sign up</title>
</head>
<body background="images/backg-2.jpg">
<form class="form-horizontal" action="<c:url value='/register'/>" method="POST">
  <fieldset>
    <div id="legend">
      <legend class=""><center>Register</center></legend>
    </div>
    
     <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="customername">Customer Name</label>
      <div class="controls">
        <input type="text" id="customername" name="customername" placeholder="" class="input-xlarge" required>
       
      </div>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="username">Username</label>
      <div class="controls">
        <input type="text" id="username" name="username" placeholder="" class="input-xlarge"required>
       
      </div>
    </div>
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <input type="text" id="email" name="email" placeholder="" class="input-xlarge"required>
       
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <input type="password" id="password" name="password" placeholder="" class="input-xlarge"required>
      
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password -->
      <label class="control-label"  for="password_confirm">Password (Confirm)</label>
      <div class="controls">
        <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="input-xlarge"required>
       
      </div>
    </div>
    
    <div class="control-group">
      <!-- Address -->
      <label class="control-label" for="address">Address</label>
      <div class="controls">
        <input type="text" id="address" name="address" placeholder="" class="input-xlarge"required>
       
      </div>
    </div>
    
    <div class="control-group">
      <!-- phone Number -->
    <label class="control-label" for="mobileNo">Phone Number</label>
      <div class="controls">
        <input type="text" id="mobileNo" name="mobileNo" placeholder="" class="input-xlarge"required>
      
      </div>
    </div>
      
 
    <div class="control-group">
      <!-- Button -->
      <div class="controls">
      <input type="submit" name="submit"  value="Register">
      </div>
    </div>
   
  </fieldset>
</form>
<%@ include file="Footer.jsp" %>
</body>
</html>