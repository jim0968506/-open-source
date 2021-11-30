package demo.controller;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
 import model.*;
 import java.util.*;

@Controller
public class ImageController {
	@RequestMapping("/picture")
	@ResponseBody  public List<Picture> generatePicPath(Model model) {         
        List<Picture>  data=Arrays.asList
        		(new Picture(1,"最終幻想14","images/p1.jpg","很貴") 
        		,new Picture(2,"分享器","images/p2.jpg","超貴")
        		,new Picture(3,"筆電","images/p3.jpg","有夠貴"));   
        return   data;         
    }
	@RequestMapping("/hbpicture")
	@ResponseBody  public List<Picture> generatehbPicPath(Model model) {         
        List<Picture>  data=null;
        SessionFactory factory=null;
        
        try {
        factory=new Configuration().configure().buildSessionFactory();
        }catch(Throwable ex) {
        	System.err.println("錯誤"+ex);
        	throw new ExceptionInInitializerError(ex);
        }
        
        	Session session=factory.openSession();
        Transaction tx=null;
        try {
	         tx = session.beginTransaction();
	         data =(List<Picture>)session.createQuery("FROM Picture").list(); 		       
	         tx.commit();
	         return data;
	      } catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      } finally {
	         session.close(); 
	         factory.close();
	      }
        
        
        return   data;         
    }
}