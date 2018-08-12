package com.niit.Controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Controller
public class SupplierController{
@Autowired
SupplierDAO  supplierDAO;
boolean flag=false;

 @RequestMapping(value="/supplier")
public String showSupplierPage(Model  m)
{
flag=false;
List<Supplier> listSupplier=supplierDAO.listSupplier();
 m.addAttribute("supplierlist", listSupplier);
 m.addAttribute("flag",flag);
return "Supplier";
}
 @RequestMapping(value="/Insertsupplier", method=RequestMethod.POST)
 public String insertsupplier(@RequestParam("supname")String supplierName,@RequestParam ("supaddr")String supplierAddr,Model m)
{
    flag=false;
    Supplier supplier =new Supplier();
    supplier.setSupplierName(supplierName) ;
    supplier.setSupplierAddr(supplierAddr) ;
     
    supplierDAO.addSupplier(supplier);
    List<Supplier> listSupplier=supplierDAO.listSupplier();
    m.addAttribute("supplierlist", listSupplier);
    return "Supplier";
    
}
 @RequestMapping(value="/deletesupplier/{supplierId}")
public String deletesupplier(@PathVariable("supplierId") int supplierId,Model m)
{
    flag=false;
    Supplier supplier=supplierDAO.getSupplier(supplierId);
    supplierDAO.deleteSupplier(supplier);
    
    List<Supplier> listSupplier=supplierDAO.listSupplier();
    m.addAttribute("supplierlist", listSupplier);
    return "Supplier";
}
   @RequestMapping(value="/editSupplier/{supplierId}")
   public String editsupplier(@PathVariable("supplierId") int supplierId,Model m)
{
     flag=true;
     Supplier supplier=supplierDAO.getSupplier(supplierId);
     m.addAttribute("supplierData", supplier);
     m.addAttribute("flag",flag);
      return "Supplier";
}
   @RequestMapping(value="/updateSupplier/{supplierId}", method=RequestMethod.POST)
   public String updatesupplier(@PathVariable("supplierId") int supplierId,@RequestParam("supname") String supplierName,@RequestParam("supAddr") String supplierAddr,Model m)
{
     
     System.out.println("update intiated");
     Supplier supplier=supplierDAO.getSupplier(supplierId);
     supplier.setSupplierName(supplierName);
     supplier.setSupplierAddr(supplierAddr);
     supplierDAO.updateSupplier(supplier);
     List<Supplier> listSupplier=supplierDAO.listSupplier();
     m.addAttribute("supplierlist", listSupplier);
    
     System.out.println("update done");
     
     return "Supplier";
}
}



