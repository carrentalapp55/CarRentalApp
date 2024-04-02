package car_rental_system_project.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import car_rental_system_project.dao.UserCrud;
import car_rental_system_project.dto.User;
@WebServlet("/editprofile")
public class EditProfile extends HttpServlet {

		  @Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			  User user = new User();
				
			    user.setName(req.getParameter("name"));
			    user.setAddress(req.getParameter("address"));
			    user.setEmail(req.getParameter("email"));
			    user.setPhone(req.getParameter("phone"));
			    user.setPassword(req.getParameter("password"));
			    user.setRole(req.getParameter("role"));
			    
			    
			    
			    HttpSession session = req.getSession();
			    String email = (String)session.getAttribute("email");
			    String role = (String)session.getAttribute("role");
			    
			  		    
			    UserCrud crud = new UserCrud();
			    
			    RequestDispatcher rDispatcher ;
			    
			    PrintWriter writer = resp.getWriter();
			    
			   try {
				       
				       int result = crud.updateProfile(user, email);
				       
				       if (result!=0) {
						
				    	   if (user.getRole().equalsIgnoreCase("admin")) {
							   
				    		   writer.print("<h1>Information updated successfully...</h1>");
				    		   rDispatcher = req.getRequestDispatcher("adminprofile.jsp");
				    		   rDispatcher.include(req, resp);
				    		   
				    		    
						    }
				    	   else if (user.getRole().equalsIgnoreCase("user")) {
							   
				    		   
				    		   writer.print("<h1>Information updated successfully...</h1>");
				    		   rDispatcher = req.getRequestDispatcher("editprofile.jsp");
				    		   rDispatcher.include(req, resp);
						}
					   }
				       else {
				    	   
				    	   writer.print("<h1>User does not exist...</h1>");
			    		   rDispatcher = req.getRequestDispatcher("login.jsp");
			    		   rDispatcher.include(req, resp);
				    	      
				       }
				   
				   
			       } catch (Exception e) {
				       
			    	    e.printStackTrace();
			       }
			    
		}
}


