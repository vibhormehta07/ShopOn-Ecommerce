package com.niit.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.OrderDetail;
import com.niit.model.UserDetail;

@Repository("userDetailDAO")
@Transactional

public class UserDetailDAOImpl implements UserDetailDAO {
	
	@Autowired
    SessionFactory sessionFactory;
	public boolean registerUserDetail(UserDetail userDetail) {
		try
		{
			sessionFactory.getCurrentSession().save(userDetail);
			return true;
		}
		catch(Exception e)
		{
		return false;
		}

	}

	public boolean updateUserDetail(OrderDetail userDetail) {
		
		try
		{
			sessionFactory.getCurrentSession().update(userDetail);
			return true;
		}
		catch(Exception e)
		{
		return false;
		}
		
		
	}

	public UserDetail getUserDetail(String username) {
		
		try
		{
			Session session=sessionFactory.getCurrentSession();
			UserDetail userDetail=(UserDetail)session.get(UserDetail.class,username);
			return userDetail;
		}
		catch(Exception e)
		{
			return null;
		}
		
		
	

}

	

	public boolean updateUserDetail(UserDetail userDetail) {
		// TODO Auto-generated method stub
		return false;
	}

	

	
}
