package com.niit.Controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@Controller
public class CategoryController{
@Autowired
CategoryDAO  categoryDAO;
boolean flag=false;

 @RequestMapping(value="/category")
public String showCategoryPage(Model  m)
{
	 flag=false;
List<Category> listCategories=categoryDAO.listCategories();
 m.addAttribute("categorylist", listCategories);
 m.addAttribute("flag",flag);
return "Category";
}
 @RequestMapping(value="/InsertCategory", method=RequestMethod.POST)
 public String insertcategory(@RequestParam("catname")String categoryName,@RequestParam ("catDesc")String categoryDesc,Model m)
{
	 flag=false;
    Category category =new Category();
    category.setCategoryName(categoryName) ;
    category.setCategoryDesc(categoryDesc) ;
     
    categoryDAO.addCategory(category);
    List<Category> listCategories=categoryDAO.listCategories();
    m.addAttribute("categorylist", listCategories);
    return "Category";
    
}
 @RequestMapping(value="/deleteCategory/{categoryId}")
public String deletecategory(@PathVariable("categoryId") int categoryId,Model m)
{
	 flag=false;
    
    Category category=categoryDAO.getCategory(categoryId);
    categoryDAO.deleteCategory(category);
    
    List<Category> listCategories=categoryDAO.listCategories();
    m.addAttribute("categorylist", listCategories);
    return "Category";
}
   @RequestMapping(value="/editCategory/{categoryId}")
   public String editcategory(@PathVariable("categoryId") int categoryId,Model m)
{
	   flag=true;
  System.out.println("edit initiated");
    Category category=categoryDAO.getCategory(categoryId);
     m.addAttribute("categoryData", category);
     m.addAttribute("flag", flag);
      return "Category";
}
   
   @RequestMapping(value="/updateCategory/{categoryId}",method=RequestMethod.POST)
   public String updatecategory(@RequestParam("categoryId") int categoryId,@RequestParam("catname") String categoryName,@RequestParam("catDesc") String categoryDesc,Model m)
{
	   
     System.out.println("update intiated");
    Category category=categoryDAO.getCategory(categoryId);
    category.setCategoryDesc(categoryDesc);
    category.setCategoryName(categoryName);
     categoryDAO.updateCategory(category);
     List<Category> listCategories=categoryDAO.listCategories();
     m.addAttribute("categorylist", listCategories);
     
     
     System.out.println("update done");
     
     return "Category";
      
}
   
}