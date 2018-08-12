package com.niit.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.model.Product;
import com.niit.dao.ProductDAO;

public class ProductDAOTestCase 
{

	static ProductDAO productDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		productDAO=(ProductDAO)context.getBean("productDAO");
	}
	@Ignore
	@Test
	public void addProductTestCase()
	{
		Product product=new Product();
		product.setProductName("IPad Mini 1");
		product.setProductDesc("Apple Ipad with 4G and apple pay Features");
		product.setPrice(15000);
		product.setStock(200);
		product.setCategoryId(3);
		product.setSupplierId(5);
		
		assertTrue("Problem in Adding Product",productDAO.addProduct(product));
	}
	//@Ignore
	@Test
	public void deleteProductTestCase()
	{
		Product product= productDAO.getProduct(21);
		assertTrue("Problem in Deleting the Product",productDAO.deleteProduct(product));
	}
	@Ignore
	@Test
	public void updateProductTestCase()
	{
		Product product= productDAO.getProduct(21);
		product.setProductName("IPad Mini 1");
		product.setPrice(16500);
		product.setProductDesc("Apple Ipad with apple pay feature");
		product.setStock(100);
		assertTrue("Problem in updating Product",productDAO.updateProduct(product));
	}
}
