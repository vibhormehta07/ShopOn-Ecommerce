package com.niit.Controller;


import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.model.OrderDetail;
import com.niit.model.CartItem;

@Controller
public class OrderController {
	
	@Autowired
	CartDAO cartDAO;
	

	@RequestMapping("/checkout")
	public String checkOutProcess(Model m,Principal p)
	{
		String username=p.getName();
		 List<CartItem> cartItems=cartDAO.showCartItem(username);
		  
		  m.addAttribute("cartItems", cartItems);
		  m.addAttribute("totalPurchaseAmount",this. calcTotalPurchaseAmount(cartItems));
		  
		  return "MyOrder";
		
	}
	
	@RequestMapping("/Payment")
	public String paymentProcess(Model m, Principal p)
	{
		String username=p.getName();
		List<CartItem> cartItems=cartDAO.showCartItem(username);
		m.addAttribute("cartItems", cartItems);
		int totalPurchaseAmount=this.calcTotalPurchaseAmount(cartItems);
		m.addAttribute("totalPurchaseAmount",totalPurchaseAmount);
		  
		 return "Payment";
		
	}
	
	@RequestMapping(value="/paymentProcess",method=RequestMethod.POST)
	public String paymentProcessing(@RequestParam("paymenttype")String paymode,Model m, Principal p)
	{
		String username=p.getName();
		List<CartItem> cartItems=cartDAO.showCartItem(username);
		m.addAttribute("cartItems", cartItems);
		int totalPurchaseAmount=this.calcTotalPurchaseAmount(cartItems);
		m.addAttribute("totalPurchaseAmount",totalPurchaseAmount);
		  
		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setPaymentMode(paymode);
		orderDetail.setUsername(username);
		orderDetail.setTotalPurchaseamount(totalPurchaseAmount);
		orderDetail.setOrderDate(new java.util.Date());
		
		
		return "Receipt";
		
	}
	
	 public int calcTotalPurchaseAmount(List<CartItem> cartItems)
	 {
		 int totalPurchaseAmount=0;
		  int count=0;
		  
		  while(count<cartItems.size())
		  {
			  CartItem cartItem=cartItems.get(count);
			  totalPurchaseAmount=totalPurchaseAmount+(cartItem.getQuantity()*cartItem.getPrice());
			  count++;
		  }
		 return totalPurchaseAmount;
		  }
	
}
