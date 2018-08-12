package com.niit.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.ProductDAO;
import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

@Controller

public class UserController {
	
	@Autowired
	UserDetailDAO userDAO;
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	 public String addRegister(@RequestParam("username")String UserName,@RequestParam ("password")String password,@RequestParam("address")String address,@RequestParam("mobileNo")String mobileNo,@RequestParam("customername")String customername,@RequestParam("email")String email)
	{
	    
	    UserDetail userDetail =new UserDetail();
	    userDetail.setUsername(UserName) ;
	    userDetail.setPassword(password) ;
	    userDetail.setCustomername(customername);
	    userDetail.setEmail(email);
	    userDetail.setAddress(address);
	    userDetail.setMobileNo(mobileNo);
	    userDetail.setRole("ROLE_USER");
	    userDetail.setEnabled(true);
	    
	   userDAO.registerUserDetail(userDetail);
	   System.out.println("registered Successfully");
	   return "Home";    
	}
	@RequestMapping(value="/logoutSuccess", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "Index";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}

}


