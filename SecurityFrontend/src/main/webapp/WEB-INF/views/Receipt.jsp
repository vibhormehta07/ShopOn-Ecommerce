<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body background="images/backg-2.jpg">
<%@ include file="Header.jsp" %>
<%-- <div class="container">
    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>Invoice</h2><h3 class="pull-right">Order # 12345</h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong>Billed To:</strong><br>
    					John Smith<br>
    					1234 Main<br>
    					Apt. 4B<br>
    					Springfield, ST 54321
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
        			<strong>Shipped To:</strong><br>
    					Jane Smith<br>
    					1234 Main<br>
    					Apt. 4B<br>
    					Springfield, ST 54321
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>Payment Method:</strong><br>
    					Visa ending **** 4242<br>
    					jsmith@email.com
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Order Date:</strong><br>
    					March 7, 2014<br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td> Product Name</td>
    								<td> Quantiy</td>
    								<td> Price</td>
    								<td> Total Price</td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<tr bgcolor="light blue">
 								<c:if test="${empty cartItems }">
 								<td colspan="6"> <center><h3>!!Cart is empty!!</h3></center></td>
 								</c:if>
 								<c:if test="${not empty cartItems}">
 								<c:forEach items="${cartItems}" var="cartItem">
 								<form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="post">
 								<tr>
     								<td>${cartItem.productName}</td>
     								<td>"${cartItem.quantity}"/></td>
     								<td>${cartItem.price}</td>
     								<td>${cartItem.quantity*cartItem.price}</td>
     
  								</tr>
  								</form>
  								</c:forEach>
  								</c:if>
  								<tr bgcolor="orange">
      								<td colspan="4">Total Purchase Amount</td>
      								<td colspan="4">INR.${ totalPurchaseAmount}/-</td>
  								</tr>
  								</tbody>
  								</table>
  								</div>
  								</div>
  								</div>
  								</div>
  								</div>
  								</div> --%>
  								

<div class="container">
<table class="table">
<tr>
    <td>
        <td colspan="6"><center><h3>Receipt</h3></center></td>
 </tr>
 
 <tr>
    <td>
        <td colspan="2">Order ID</td>
        <td>ORD00${orderDetail.orderId}</td>
        <td colspan="2">Order Date</td>
        <td>${orderDetail.orderDate}</td>
 </tr>
 <tr>
    
    <td> Product Name</td>
    <td> Quantiy</td>
    <td> Price</td>
    <td> Total Price</td>
    
 </tr>
 
 
 <tr bgcolor="Green">
 <c:if test="${empty cartItems}">
 <td colspan="6"> <center><h3>!!Cart is empty!!</h3></center></td>
 </c:if>
 <c:if test="${not empty cartItems}">
 <c:forEach items="${cartItem}" var="cartItems">
 <%-- <form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="post"> --%>
 <tr>
     <td>${cartItem.productName}</td>
     <td>${cartItem.quantity}</td>
     <td>${cartItem.price}</td>
     <td>${cartItem.quantity*cartItem.price}</td>
     
  </tr>
  <!-- </form> -->
  </c:forEach>
  </c:if>
   
 <tr bgcolor="red">
      <td colspan="4">Total Purchase Amount</td>
      <td colspan="4">INR.${ totalPurchaseAmount}/-</td>
  </tr>
  
  <tr bgcolor="yellow">
        <td colspan="6"><center><h4>Thanks for Shopping here..Have a good!!!</h4></center></td>
   </tr>
 </table>
 </div>
 <%@ include file="Footer.jsp" %>
</body>
</html>      
 