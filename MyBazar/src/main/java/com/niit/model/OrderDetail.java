package com.niit.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="OrderDetail")
public class OrderDetail {
	@Id
	@GeneratedValue
	int orderId;
	String username;
	Date orderDate;
	int totalPurchaseamount;
	String paymentMode;
	public int getOrderId() {
		return orderId;
	}
	public void setOrder(int orderId) {
		this.orderId = orderId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getTotalPurchaseamount() {
		return totalPurchaseamount;
	}
	public void setTotalPurchaseamount(int totalPurchaseamount) {
		this.totalPurchaseamount = totalPurchaseamount;
	}
	public String getPaymentMode() {
		return paymentMode;
	}
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	
	

}
