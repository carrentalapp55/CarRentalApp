package car_rental_system_project.controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car_rental_system_project.dao.UserCrud;
import car_rental_system_project.dto.User;



@WebServlet("/login")
public class LoginController extends HttpServlet {
      
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	   
    	
  	  String email = req.getParameter("email");
	  String password = req.getParameter("password");
	  
	  UserCrud userCrud = new UserCrud();
	  
	  RequestDispatcher rDispatcher ;
	  
	  PrintWriter writer  = resp.getWriter();
	  
	  User user;
	  
	 try {
		        user = userCrud.login(email);
		     
		        if (user!=null) {
					
		        	if (user.getPassword().equals(password)) {
						
		        		if (user.getRole().equals("user")) {
							
		        			rDispatcher = req.getRequestDispatcher("userhome.jsp");
		        			rDispatcher.forward(req, resp);
						}
		        		else if (user.getRole().equals("admin")) {
							
		        			rDispatcher = req.getRequestDispatcher("adminHome.jsp");
		        			rDispatcher.forward(req, resp);
						}

					}
		        	 else {
				        	
				        	writer.print("<h1>Invalid Credentials...</h1>");
				        	rDispatcher = req.getRequestDispatcher("login.jsp");
				        	rDispatcher.include(req, resp);
				        	
				        }
				}
		        else {
		        	
		        	writer.print("<h1>User does not exist...Register First!</h1>");
		        	rDispatcher = req.getRequestDispatcher("register.jsp");
		        	rDispatcher.include(req, resp);
		        	
		        }
	     } 
	 catch (Exception e) {
		
		   e.printStackTrace();
	   }
}
    	
    }
