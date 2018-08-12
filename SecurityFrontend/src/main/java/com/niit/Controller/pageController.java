package com.niit.Controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class pageController {
	
	@RequestMapping(value="/")
    public String showRootPage()
    {
		return "Index";
    }
	
	@RequestMapping(value="/home")
    public String showrootPage()
    {
		return "Home";
    }

	
	@RequestMapping(value="/login")
     public String showLoginPage()
     {
		return "Login";
		
     }
	
	@RequestMapping(value="/register")
    public String showRegisterPage()
    {
		return "Register";
    }
	
	@RequestMapping(value="/contactus")
    public String showContactUsPage()
    {
		return "ContactUs";
    }
	
	@RequestMapping(value="/aboutus")
    public String showAboutUsPage()
    {
		return "AboutUs";
    }
	
	@RequestMapping(value="/admin")
    public String showAdminHomePage()
    {
		return "AdminHome";
    }
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal) {
	     
	    if (principal != null) {
	        model.addAttribute("message", "Hi " + principal.getName()
	                + "<br> You do not have permission to access this page!");
	    } else {
	        model.addAttribute("msg",
	                "You do not have permission to access this page!");
	    }
	    return "403Page";
	}
	
	 
	 

	}
	