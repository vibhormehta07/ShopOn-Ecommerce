package com.niit.test;



import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

public class UserDetailTestCase {
	
	static UserDetailDAO userDetailDAO;
	@BeforeClass
	public static void configure()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		userDetailDAO=(UserDetailDAO)context.getBean("userDetailDAO");
		
	}
	//@Ignore
	@Test
	public void registerUserDetailtest() {
		UserDetail userDetail= new UserDetail();
		userDetail.setCustomername("Vibhor Mehta");
		userDetail.setEmail("vibhormehta20@gmail.com");
		userDetail.setMobileNo("9980804877");
		userDetail.setRole("ROLE_ADMIN");
		userDetail.setUsername("vibhormehta");
		userDetail.setAddress("Bangalore");
		userDetail.setPassword("12345");
		userDetail.setEnabled(true);
		assertTrue("Problem in Registering UserDetails:",userDetailDAO.registerUserDetail(userDetail));
	}
	@Ignore
	@Test
	public void updateUserDetailTest()
	{
		UserDetail userDetail=userDetailDAO.getUserDetail("SureshRana1");
		userDetail.setPassword("12345");
		assertTrue("Problem in updating UserDetail/cart items: ",userDetailDAO.updateUserDetail(userDetail));
		
	}
	@Ignore
	@Test
	public void getUserDetailTest()
	{
		UserDetail userDetail= new UserDetail();
		userDetail=userDetailDAO.getUserDetail("SureshRana1");
		assertEquals("12345",userDetail.getPassword());
	}
}

