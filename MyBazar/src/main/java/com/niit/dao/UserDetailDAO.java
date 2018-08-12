package com.niit.dao;

import com.niit.model.OrderDetail;
import com.niit.model.UserDetail;

public interface UserDetailDAO {
	
	public boolean registerUserDetail(UserDetail userDetail);
	public boolean updateUserDetail(UserDetail userDetail);
	public UserDetail getUserDetail(String username);

}
