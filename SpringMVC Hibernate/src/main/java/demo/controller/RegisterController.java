//package demo.controller;
//import org.hibernate.HibernateException;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
//import org.hibernate.cfg.Configuration;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//import org.springframework.ui.ModelMap;
//import model.Account;
//import java.util.*;
//@Controller
//public class RegisterController {
//
//    @RequestMapping(value = "/Register", method = RequestMethod.GET)
//    public ModelAndView student() {
//        Account temp=new Account();
//        temp.setAid(1);
//        temp.setUserName("John");
//        temp.setPassword("0");
//        return new ModelAndView("jqRegister", "command", temp);
//    }
//
//    @RequestMapping(value = "/addAccount", method = RequestMethod.POST)
//    public String addAccount(@ModelAttribute("account") Account account, ModelMap model) {
//    	model.addAttribute("aid", account.getAid());
//        model.addAttribute("userName", account.getUserName());
//        model.addAttribute("password", account.getPassword());       
//        boolean f=addAccount(account);
//        if(f)
//        	model.addAttribute("flag", "新增成功");
//        else
//        	model.addAttribute("flag","新增失敗");
//        return "result";
//    }
//    boolean addAccount(Account a) {
//    	SessionFactory factory=null;
//		boolean flag=true; 
//    	try {
//	         factory = new Configuration().configure().buildSessionFactory();
//	      } catch (Throwable ex) { 
//	         System.err.println("掛了掛了掛了掛了掛了掛了掛了" + ex);
//	         throw new ExceptionInInitializerError(ex);	        
//	      }	
//		
//		  Session session = factory.openSession();
//	      Transaction tx = null;
//	      try {
//		         tx = session.beginTransaction();
//		        session.save(a);
//		         tx.commit();
//		        
//		      } catch (Exception e) {
//		         if (tx!=null)
//		        	 tx.rollback();
//		         System.out.println("掛了掛了掛了掛了掛了掛了:"+e.getMessage());
//		         flag=false;
//		      } finally {
//		         session.close(); 
//		         factory.close();
//		      }
//	      return flag;
//    }
//    @RequestMapping(value = "/list",method = RequestMethod.GET)
//	   public String listAccount(ModelMap model) {
//    List<Account> data=getAll();	
//    System.out.println(data);
//	      model.addAttribute("message", data);
//	      return "showAccount";
//	   }
//	List<Account> getAll(){
//		SessionFactory factory=null;
//		 try {
//	         factory = new Configuration().configure().buildSessionFactory();
//	      } catch (Throwable ex) { 
//	         System.err.println("Failed to create sessionFactory object." + ex);
//	         throw new ExceptionInInitializerError(ex);	        
//	      }
//		
//		
//		  Session session = factory.openSession();
//	      Transaction tx = null;
//	      
//	      try {
//	         tx = session.beginTransaction();
//	         List data = session.createQuery("FROM Account").list(); 
//	         for(Object obj:data) {
//	        	 Account st = (Account) obj; 
//		            System.out.print("ID:" + st.getAid()); 
//		            System.out.print("UserName: " + st.getUserName()); 
//		            System.out.println("Password: " + st.getPassword()); 
//	         }
////	         for (Iterator iterator = data.iterator(); iterator.hasNext();){
////	            Student st = (Student) iterator.next(); 
////	            System.out.print("Student ID: " + st.getId()); 
////	            System.out.print("  Last Name: " + st.getName()); 
////	            System.out.println("  Address: " + st.getAge()); 
////	         }
//	         tx.commit();
//	         return data;
//	      } catch (HibernateException e) {
//	         if (tx!=null) tx.rollback();
//	         e.printStackTrace(); 
//	      } finally {
//	         session.close(); 
//	         factory.close();
//	      }
//		
//		return null;
//	}
//    
//}
