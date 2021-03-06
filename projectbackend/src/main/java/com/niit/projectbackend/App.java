package com.niit.projectbackend;
import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.models.Product;
/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
   	 //TESTING SAVEPRODUCT method in productdaoimpl
    	//USE JUNIT testing tool to test the method
            System.out.println( "Hello World!" );
            //SessionFactory, DataSource, TransactionManager, ProductDaoImpl
        ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class);
       ProductDao productDao= (ProductDao)context.getBean("productDaoImpl");
      List<Product> products=productDao.getAllProducts();
      for(Product p:products) { //for eachProduct p in products
    	System.out.println(p.getId() +" " + p.getProductname() +" " + p.getProductdesc() +" " + p.getQuantity()+" " + 
p.getPrice() );
      }
       
       Product product=new Product(); //New Product
       product.setProductname("Introduction to Spring framework"); //inserted in the column productname
       product.setProductdesc("2nd Edition"); //column productdesc
       product.setPrice(1000); //column price
       product.setQuantity(10); //column quantity
       //column id =0
       
       productDao.saveProduct(product);//to insert product details into a product table

    }
}
