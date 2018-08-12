<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp" %>
<body background="images/backg-2.jpg">
<div class="container">
<table class="table">
<tr>
    <td colspan="6"> <center><h3>Your Order</h3></center></td>
</tr>
<tr>
    <!-- <td> SL #</td> -->
    <td> Product Name</td>
    <td> Quantity</td>
    <td> Price</td>
    <td> Total Price</td>
    <td> Operation</td>
 </tr>
 <c:if test="${empty cartItem}">
 <td colspan="6"> <center><h3>!!Cart is empty!!</h3></center></td>
 </c:if>
 <c:if test="${not empty cartItem}">
 <c:forEach items="${cartItem}" var="cartItem">
 <form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="post">
 <tr>
     <td>${cartItem.productName}</td>
     <td>${cartItem.quantity}</td>
     <td>${cartItem.price}</td>
     <td>${cartItem.quantity*cartItem.price}</td>
     <td>
        <input type="submit" value="Delete" class="btn btn-info"/>
        <a href ="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class=""btn btn-danger"/>
     </td>
     <td>
     	<input type="submit" value="Update" class="btn btn-info"/>
     	<a href="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" class=""btn btn-danger"/>
  </tr>
  </form>
  </c:forEach>
  <tr bgcolor="purple">
  
      <td colspan="4"> Total Purchase Amount</td>
      <td colspan="2">${totalPurchaseAmount}</td>
   </tr>
   
   <tr bgcolor="orange">
        <td colspan="3"><a href="<c:url value="/continueShopping"/> class="btn btn-info"> Continue Shopping</a></td>
        <td colspan="3"><a href="<c:url value="/Payment"/>" class="btn btn-info">Payment</a></td>
   </tr>
   </c:if>
   </table>
   </div>
   <%@ include file="Footer.jsp" %>
 </body>
 </html> 