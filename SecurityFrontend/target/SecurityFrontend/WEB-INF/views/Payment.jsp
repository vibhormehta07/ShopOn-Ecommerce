<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<body>
<%@ include file="Header.jsp" %>

<div class="container">
<form action="<c:url value="/paymentProcess"/>" method="post">
<table class="table" align="center" width="50">

<tr>
    <td colspan="2">Payment Option</td>
</tr>

<tr>
    <td colspan="2">
       <input type="radio" name="paymenttype" value="CC"/>Credit Card
       <input type="radio" name="paymenttype" value="CC"/>Cash On Delivery
       
</td>
</tr>
<tr>
    <td>Cart No:</td>
     <td> <input type="text" name="cardno" required/></td>
 </tr>
 
 <tr>
    <td>CVV</td>
     <td> <input type="text" name="cvv" required/></td>
 </tr>
 
 <tr>
    <td>Valid Upto</td>
     <td> <input type="text" name="valid" required/></td>
 </tr>
 
 <tr>
    <td colspan="2">
    <td> <input type="submit" name="payment" value="Reciept"></td>
    <!-- <td colspan="3"><class="btn btn-info">Receipt</a></td> -->
  </tr>
  </table>
  </form>
  </div>
  <%@ include file="Footer.jsp" %>
</body>
</html>  
    
 
